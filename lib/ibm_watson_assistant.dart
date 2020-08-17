library ibm_watson_assistant;

import 'package:dio/dio.dart';
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

  const IbmWatsonAssistantAuth({
    this.username = 'apikey',
    this.version = '2020-04-01',
    @required this.apikey,
    @required this.url,
    @required this.assistantId,
  });
}

class IbmWatsonAssistant {
  final IbmWatsonAssistantAuth auth;

  IbmWatsonAssistant(this.auth);
}
