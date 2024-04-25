// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuestionData _$QuestionDataFromJson(Map json) {
  $checkKeys(
    json,
    requiredKeys: const ['title', 'hint', 'is-required', 'type', 'body'],
    disallowNullValues: const ['title', 'hint', 'is-required', 'type', 'body'],
  );
  return QuestionData._(
    title: json['title'] as String,
    hint: json['hint'] as String,
    isRequired: json['is-required'] as bool,
    type: $enumDecode(_$QuestionBodyTypeEnumMap, json['type']),
    body: json['body'] as Map,
  );
}

Map<String, dynamic> _$QuestionDataToJson(QuestionData instance) =>
    <String, dynamic>{
      'title': instance.title,
      'hint': instance.hint,
      'is-required': instance.isRequired,
      'type': _$QuestionBodyTypeEnumMap[instance.type]!,
      'body': instance.body.toJson(),
    };

const _$QuestionBodyTypeEnumMap = {
  QuestionBodyType.textQuestionBody: 'textQuestionBody',
  QuestionBodyType.choiceQuestionBody: 'choiceQuestionBody',
};

Question _$QuestionFromJson(Map json) {
  $checkKeys(
    json,
    requiredKeys: const ['title', 'hint', 'is-required', 'type', 'body', '_id'],
    disallowNullValues: const [
      'title',
      'hint',
      'is-required',
      'type',
      'body',
      '_id'
    ],
  );
  return Question._(
    id: json['_id'] as String,
    title: json['title'] as String,
    hint: json['hint'] as String,
    isRequired: json['is-required'] as bool,
    type: $enumDecode(_$QuestionBodyTypeEnumMap, json['type']),
    body: json['body'] as Map,
  );
}

Map<String, dynamic> _$QuestionToJson(Question instance) => <String, dynamic>{
      'title': instance.title,
      'hint': instance.hint,
      'is-required': instance.isRequired,
      'type': _$QuestionBodyTypeEnumMap[instance.type]!,
      'body': instance.body.toJson(),
      '_id': instance.id,
    };

TextQuestionBody _$TextQuestionBodyFromJson(Map json) {
  $checkKeys(
    json,
    requiredKeys: const ['text-type'],
    disallowNullValues: const ['text-type'],
  );
  return TextQuestionBody(
    textType: $enumDecode(_$TextQuestionBodyTypeEnumMap, json['text-type']),
  );
}

Map<String, dynamic> _$TextQuestionBodyToJson(TextQuestionBody instance) =>
    <String, dynamic>{
      'text-type': _$TextQuestionBodyTypeEnumMap[instance.textType]!,
    };

const _$TextQuestionBodyTypeEnumMap = {
  TextQuestionBodyType.short: 'short',
  TextQuestionBodyType.large: 'large',
};

ChoiceQuestionBody _$ChoiceQuestionBodyFromJson(Map json) {
  $checkKeys(
    json,
    requiredKeys: const ['items', 'choice-type'],
    disallowNullValues: const ['items', 'choice-type'],
  );
  return ChoiceQuestionBody(
    items: (json['items'] as List<dynamic>).map((e) => e as String).toList(),
    choiceType:
        $enumDecode(_$ChoiceQuestionBodyTypeEnumMap, json['choice-type']),
  );
}

Map<String, dynamic> _$ChoiceQuestionBodyToJson(ChoiceQuestionBody instance) =>
    <String, dynamic>{
      'items': instance.items,
      'choice-type': _$ChoiceQuestionBodyTypeEnumMap[instance.choiceType]!,
    };

const _$ChoiceQuestionBodyTypeEnumMap = {
  ChoiceQuestionBodyType.radio: 'radio',
  ChoiceQuestionBodyType.checkbox: 'checkbox',
  ChoiceQuestionBodyType.dropdown: 'dropdown',
};
