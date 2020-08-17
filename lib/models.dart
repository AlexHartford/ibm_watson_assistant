import 'package:json_annotation/json_annotation.dart';

part 'models.g.dart';

@JsonSerializable()
class IbmWatsonAssistantResponse {
  @JsonKey(name: 'output')
  final _Output output;
  @JsonKey(name: 'context')
  final _Context context;

  IbmWatsonAssistantResponse({this.output, this.context});

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
  @JsonKey(name: 'actions')
  final List<Map<String, dynamic>> actions;
  @JsonKey(name: 'generic')
  final List<_Generic> generic;

  _Output({this.intents, this.entities, this.actions, this.generic});

  factory _Output.fromJson(Map<String, dynamic> json) =>
      _$_OutputFromJson(json);

  Map<String, dynamic> toJson() => _$_OutputToJson(this);
}

@JsonSerializable()
class _Intent {
  @JsonKey(name: 'intent')
  final String intent;
  @JsonKey(name: 'confidence')
  final double confidence;

  _Intent({this.intent, this.confidence});

  factory _Intent.fromJson(Map<String, dynamic> json) =>
      _$_IntentFromJson(json);

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

  _Entity({this.entity, this.location, this.value, this.confidence});

  factory _Entity.fromJson(Map<String, dynamic> json) =>
      _$_EntityFromJson(json);

  Map<String, dynamic> toJson() => _$_EntityToJson(this);
}

@JsonSerializable()
class _Generic {
  @JsonKey(name: 'response_type')
  final String responseType;
  @JsonKey(name: 'text')
  final String text;

  _Generic({this.responseType, this.text});

  factory _Generic.fromJson(Map<String, dynamic> json) =>
      _$_GenericFromJson(json);

  Map<String, dynamic> toJson() => _$_GenericToJson(this);
}

@JsonSerializable()
class _Context {
  @JsonKey(name: 'global')
  final _Global global;
  @JsonKey(name: 'skills')
  final _Skills skills;

  _Context({this.global, this.skills});

  factory _Context.fromJson(Map<String, dynamic> json) =>
      _$_ContextFromJson(json);

  Map<String, dynamic> toJson() => _$_ContextToJson(this);
}

@JsonSerializable()
class _Global {
  @JsonKey(name: 'system')
  final _System system;
  @JsonKey(name: 'session_id')
  final String sessionId;

  _Global({this.system, this.sessionId});

  factory _Global.fromJson(Map<String, dynamic> json) =>
      _$_GlobalFromJson(json);

  Map<String, dynamic> toJson() => _$_GlobalToJson(this);
}

@JsonSerializable()
class _System {
  @JsonKey(name: 'turn_count')
  final int turnCount;

  _System({this.turnCount});

  factory _System.fromJson(Map<String, dynamic> json) =>
      _$_SystemFromJson(json);

  Map<String, dynamic> toJson() => _$_SystemToJson(this);
}

@JsonSerializable()
class _Skills {
  @JsonKey(name: 'main skill')
  final _MainSkill mainSkill;

  _Skills({this.mainSkill});

  factory _Skills.fromJson(Map<String, dynamic> json) =>
      _$_SkillsFromJson(json);

  Map<String, dynamic> toJson() => _$_SkillsToJson(this);
}

@JsonSerializable()
class _MainSkill {
  @JsonKey(name: 'user_defined')
  final Map<String, dynamic> userDefined;
  @JsonKey(name: 'system')
  final _SystemState systemState;

  _MainSkill({this.userDefined, this.systemState});

  factory _MainSkill.fromJson(Map<String, dynamic> json) =>
      _$_MainSkillFromJson(json);

  Map<String, dynamic> toJson() => _$_MainSkillToJson(this);
}

@JsonSerializable()
class _SystemState {
  @JsonKey(name: 'state')
  final String state;

  _SystemState({this.state});

  factory _SystemState.fromJson(Map<String, dynamic> json) =>
      _$_SystemStateFromJson(json);

  Map<String, dynamic> toJson() => _$_SystemStateToJson(this);
}
