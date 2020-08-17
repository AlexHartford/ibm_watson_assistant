// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IbmWatsonAssistantResponse _$IbmWatsonAssistantResponseFromJson(
    Map<String, dynamic> json) {
  return IbmWatsonAssistantResponse(
    json['output'] == null
        ? null
        : _Output.fromJson(json['output'] as Map<String, dynamic>),
    json['context'] as Map<String, dynamic>,
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
    (json['intents'] as List)
        ?.map((e) =>
            e == null ? null : _Intent.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['entities'] as List)
        ?.map((e) =>
            e == null ? null : _Entity.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['generic'] as List)
        ?.map((e) =>
            e == null ? null : _Generic.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_OutputToJson(_Output instance) => <String, dynamic>{
      'intents': instance.intents,
      'entities': instance.entities,
      'generic': instance.generic,
    };

_Intent _$_IntentFromJson(Map<String, dynamic> json) {
  return _Intent(
    json['intent'] as String,
    (json['confidence'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$_IntentToJson(_Intent instance) => <String, dynamic>{
      'intent': instance.intent,
      'confidence': instance.confidence,
    };

_Entity _$_EntityFromJson(Map<String, dynamic> json) {
  return _Entity(
    json['entity'] as String,
    (json['location'] as List)?.map((e) => e as int)?.toList(),
    json['value'] as String,
    (json['confidence'] as num)?.toDouble(),
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
    json['response_type'] as String,
    json['text'] as String,
  );
}

Map<String, dynamic> _$_GenericToJson(_Generic instance) => <String, dynamic>{
      'response_type': instance.responseType,
      'text': instance.text,
    };
