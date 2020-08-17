import 'package:json_annotation/json_annotation.dart';

part 'models.g.dart';

@JsonSerializable()
class IbmWatsonAssistantResponse {
  @JsonKey(name: 'output')
  final _Output output;
  @JsonKey(name: 'context')
  final Map<String, dynamic> context;

  IbmWatsonAssistantResponse(this.output, this.context);

  factory IbmWatsonAssistantResponse.fromJson(Map<String, dynamic> json) =>
      _$IbmWatsonAssistantResponseFromJson(json);

  Map<String, dynamic> toJson() => _$IbmWatsonAssistantResponseToJson(this);

  String get responseText => output.generic.first.text;
}

@JsonSerializable()
class _Output {
  @JsonKey(name: 'intents')
  final List<_Intent> intents;
  @JsonKey(name: 'entities')
  final List<_Entity> entities;
  // @JsonKey(name: 'actions')
  // final List<_Actions> actions;
  @JsonKey(name: 'generic')
  final List<_Generic> generic;

  // _Output(this.intents, this.entities, this.actions, this.generic);
  _Output(this.intents, this.entities, this.generic);

  factory _Output.fromJson(Map<String, dynamic> json) => _$_OutputFromJson(json);

  Map<String, dynamic> toJson() => _$_OutputToJson(this);
}

@JsonSerializable()
class _Intent {
  @JsonKey(name: 'intent')
  final String intent;
  @JsonKey(name: 'confidence')
  final double confidence;

  _Intent(this.intent, this.confidence);

  factory _Intent.fromJson(Map<String, dynamic> json) => _$_IntentFromJson(json);

  Map<String, dynamic> toJson() => _$_IntentToJson(this);
}

@JsonSerializable()
class _Entity {
  @JsonKey(name: 'entity')
  final String entity;
  @JsonKey(name: 'location')
  final List<int> location;
  @JsonKey(name: 'value')
  final String value;
  @JsonKey(name: 'confidence')
  final double confidence;

  _Entity(this.entity, this.location, this.value, this.confidence);

  factory _Entity.fromJson(Map<String, dynamic> json) => _$_EntityFromJson(json);

  Map<String, dynamic> toJson() => _$_EntityToJson(this);
}

// class _Actions {}

@JsonSerializable()
class _Generic {
  @JsonKey(name: 'response_type')
  final String responseType;
  @JsonKey(name: 'text')
  final String text;

  _Generic(this.responseType, this.text);

  factory _Generic.fromJson(Map<String, dynamic> json) => _$_GenericFromJson(json);

  Map<String, dynamic> toJson() => _$_GenericToJson(this);
}
