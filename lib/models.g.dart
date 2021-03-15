// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IbmWatsonAssistantResponse _$IbmWatsonAssistantResponseFromJson(
    Map<String, dynamic> json) {
  return IbmWatsonAssistantResponse(
    output: json['output'] == null
        ? null
        : _Output.fromJson(json['output'] as Map<String, dynamic>),
    context: json['context'] == null
        ? null
        : _Context.fromJson(json['context'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$IbmWatsonAssistantResponseToJson(
        IbmWatsonAssistantResponse instance) =>
    <String, dynamic>{
      'output': instance.output,
      'context': instance.context,
    };

_Output _$_OutputFromJson(Map<String, dynamic> json) {
  return _Output(
    intents: (json['intents'] as List<dynamic>?)
        ?.map((e) => _Intent.fromJson(e as Map<String, dynamic>))
        .toList(),
    entities: (json['entities'] as List<dynamic>?)
        ?.map((e) => _Entity.fromJson(e as Map<String, dynamic>))
        .toList(),
    actions: (json['actions'] as List<dynamic>?)
        ?.map((e) => e as Map<String, dynamic>)
        .toList(),
    generic: (json['generic'] as List<dynamic>?)
        ?.map((e) => _Generic.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_OutputToJson(_Output instance) => <String, dynamic>{
      'intents': instance.intents,
      'entities': instance.entities,
      'actions': instance.actions,
      'generic': instance.generic,
    };

_Intent _$_IntentFromJson(Map<String, dynamic> json) {
  return _Intent(
    intent: json['intent'] as String?,
    confidence: (json['confidence'] as num?)?.toDouble(),
  );
}

Map<String, dynamic> _$_IntentToJson(_Intent instance) => <String, dynamic>{
      'intent': instance.intent,
      'confidence': instance.confidence,
    };

_Entity _$_EntityFromJson(Map<String, dynamic> json) {
  return _Entity(
    entity: json['entity'] as String?,
    location:
        (json['location'] as List<dynamic>?)?.map((e) => e as int).toList(),
    value: json['value'] as String?,
    confidence: (json['confidence'] as num?)?.toDouble(),
  );
}

Map<String, dynamic> _$_EntityToJson(_Entity instance) => <String, dynamic>{
      'entity': instance.entity,
      'location': instance.location,
      'value': instance.value,
      'confidence': instance.confidence,
    };

_Generic _$_GenericFromJson(Map<String, dynamic> json) {
  return _Generic(
    responseType: json['response_type'] as String?,
    text: json['text'] as String?,
  );
}

Map<String, dynamic> _$_GenericToJson(_Generic instance) => <String, dynamic>{
      'response_type': instance.responseType,
      'text': instance.text,
    };

_Context _$_ContextFromJson(Map<String, dynamic> json) {
  return _Context(
    global: json['global'] == null
        ? null
        : _Global.fromJson(json['global'] as Map<String, dynamic>),
    skills: json['skills'] == null
        ? null
        : _Skills.fromJson(json['skills'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_ContextToJson(_Context instance) => <String, dynamic>{
      'global': instance.global,
      'skills': instance.skills,
    };

_Global _$_GlobalFromJson(Map<String, dynamic> json) {
  return _Global(
    system: json['system'] == null
        ? null
        : _System.fromJson(json['system'] as Map<String, dynamic>),
    sessionId: json['session_id'] as String?,
  );
}

Map<String, dynamic> _$_GlobalToJson(_Global instance) => <String, dynamic>{
      'system': instance.system,
      'session_id': instance.sessionId,
    };

_System _$_SystemFromJson(Map<String, dynamic> json) {
  return _System(
    turnCount: json['turn_count'] as int?,
  );
}

Map<String, dynamic> _$_SystemToJson(_System instance) => <String, dynamic>{
      'turn_count': instance.turnCount,
    };

_Skills _$_SkillsFromJson(Map<String, dynamic> json) {
  return _Skills(
    mainSkill: json['main skill'] == null
        ? null
        : _MainSkill.fromJson(json['main skill'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_SkillsToJson(_Skills instance) => <String, dynamic>{
      'main skill': instance.mainSkill,
    };

_MainSkill _$_MainSkillFromJson(Map<String, dynamic> json) {
  return _MainSkill(
    userDefined: json['user_defined'] as Map<String, dynamic>?,
    systemState: json['system'] == null
        ? null
        : _SystemState.fromJson(json['system'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_MainSkillToJson(_MainSkill instance) =>
    <String, dynamic>{
      'user_defined': instance.userDefined,
      'system': instance.systemState,
    };

_SystemState _$_SystemStateFromJson(Map<String, dynamic> json) {
  return _SystemState(
    state: json['state'] as String?,
  );
}

Map<String, dynamic> _$_SystemStateToJson(_SystemState instance) =>
    <String, dynamic>{
      'state': instance.state,
    };
