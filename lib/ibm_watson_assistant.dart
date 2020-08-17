library ibm_watson_assistant;

import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:ibm_watson_assistant/models.dart';
import 'package:meta/meta.dart';

/// All required auth information can be found in Assistant > Settings > API details
class IbmWatsonAssistantAuth {
  /// Leave this alone unless you have created custom credentials.
  ///
  /// IBM default is always 'apikey'.
  final String username;

  /// The API key for your assistant.
  ///
  /// Settings > API key
  final String apikey;

  /// The version of the API to use.
  ///
  /// Date formatted YYYY-MM-DD.
  ///
  /// Defaults to current latest, 2020-04-01.
  final String version;

  /// The base URL for your IBM Watson instance.
  ///
  /// Settings > Assistant URL
  ///
  /// Example: https://api.us-south.assistant.watson.cloud.ibm.com/instances/abcd1234-abcd-1234-abcd-abcd1234abcd
  final String url;

  /// The unique identifier for your assistant.
  ///
  /// Settings > Assistant ID
  final String assistantId;

  final String _basic;
  String get basic => _basic;

  IbmWatsonAssistantAuth({
    this.username = 'apikey',
    this.version = '2020-04-01',
    @required this.apikey,
    @required this.url,
    @required this.assistantId,
  }) : _basic = 'Basic ${base64Encode(utf8.encode('$username:$apikey'))}';
}

enum RequestType { Session, Message, Logs }

/// IBM Watson Assistant V2 API Functions
class IbmWatsonAssistant {
  final IbmWatsonAssistantAuth auth;
  final Options options;

  IbmWatsonAssistant(this.auth)
      : options = Options(
          headers: {
            'Content-Type': 'application/json',
            'Authorization': auth.basic,
          },
        );

  String _buildPath(RequestType type, {String sessionId}) {
    var path = '${auth.url}/v2/assistants/${auth.assistantId}';

    switch (type) {
      case RequestType.Session:
        path += sessionId == null ? '/sessions' : '/sessions/$sessionId';
        break;
      case RequestType.Message:
        path += sessionId == null ? '/message' : '/sessions/$sessionId/message';
        break;
      case RequestType.Logs:
        path += '/logs';
        break;
    }

    return '$path?version=${auth.version}';
  }

  /// Creates a new session for a user and returns the session ID.
  ///
  /// IBM deletes sessions automatically after 5 minutes of inactivity.
  Future<String> createSession() async {
    final path = _buildPath(RequestType.Session);

    final res = await Dio().post(path, options: options);

    return res.data['session_id'];
  }

  /// Clears the current session for a user.
  ///
  /// IBM deletes sessions automatically after 5 minutes of inactivity.
  Future<void> deleteSession(String sessionId) async {
    final path = _buildPath(RequestType.Session, sessionId: sessionId);

    await Dio().delete(path, options: options);
  }

  /// If sessionId is specified, sends stateful input to the chatbot in the matching session.
  ///
  /// Otherwise, sends stateless input to IBM Watson Chatbot. Has no impact on any user sessions.
  /// This is useful if you wish to manage your own session state.
  ///
  /// Context is returned by default, set returnContext to false if you do not want this behavior.
  Future<IbmWatsonAssistantResponse> sendInput(String input,
      {String sessionId, bool returnContext = true}) async {
    final path = _buildPath(RequestType.Message, sessionId: sessionId);

    final data = {
      'input': {
        'text': input,
        'options': {
          'return_context': returnContext,
        }
      }
    };

    final res = await Dio().post(path, data: data, options: options);

    return IbmWatsonAssistantResponse.fromJson(res.data);
  }

  /// Retrieves IBM Watson Chatbot logs.
  ///
  /// Only available for paid plans.
  Future<Map<String, dynamic>> logs() async {
    final path = _buildPath(RequestType.Logs);

    final res = await Dio().get(path, options: options);

    return res.data;
  }
}
