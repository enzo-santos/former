// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// OrmGenerator
// **************************************************************************

@JsonSerializable(
  anyMap: true,
  explicitToJson: true,
  constructor: '_',
)
class QuestionData {
  factory QuestionData.fromJson(Map json) => _$QuestionDataFromJson(json);

  factory QuestionData._({
    required String title,
    required String hint,
    required bool isRequired,
    required QuestionBodyType type,
    required Map body,
  }) {
    return QuestionData(
      title: title,
      hint: hint,
      isRequired: isRequired,
      type: type,
      body: QuestionBody.fromType(
        type,
        body,
      ),
    );
  }

  const QuestionData({
    required this.title,
    required this.hint,
    required this.isRequired,
    required this.body,
    required this.type,
  });

  @JsonKey(
    name: 'title',
    required: true,
    disallowNullValue: true,
  )
  final String title;

  @JsonKey(
    name: 'hint',
    required: true,
    disallowNullValue: true,
  )
  final String hint;

  @JsonKey(
    name: 'is-required',
    required: true,
    disallowNullValue: true,
  )
  final bool isRequired;

  @JsonKey(
    name: 'type',
    required: true,
    disallowNullValue: true,
  )
  final QuestionBodyType type;

  @JsonKey(
    name: 'body',
    required: true,
    disallowNullValue: true,
  )
  final QuestionBody body;

  Map<String, Object?> toJson() => _$QuestionDataToJson(this);
}

@JsonSerializable(
  anyMap: true,
  explicitToJson: true,
  constructor: '_',
)
class Question extends QuestionData implements _Question {
  factory Question.fromJson(
    String id,
    Map json,
  ) =>
      _$QuestionFromJson({
        ...json,
        '_id': id,
      });

  factory Question._({
    required String id,
    required String title,
    required String hint,
    required bool isRequired,
    required QuestionBodyType type,
    required Map body,
  }) {
    final QuestionData data = QuestionData._(
      title: title,
      hint: hint,
      isRequired: isRequired,
      type: type,
      body: body,
    );
    return Question(
      id: id,
      title: data.title,
      hint: data.hint,
      isRequired: data.isRequired,
      type: data.type,
      body: data.body,
    );
  }

  const Question({
    required this.id,
    required super.title,
    required super.hint,
    required super.isRequired,
    required super.type,
    required super.body,
  });

  @JsonKey(
    name: '_id',
    required: true,
    disallowNullValue: true,
  )
  final String id;

  @override
  Map<String, Object?> toJson() {
    return {..._$QuestionToJson(this)..remove('_id')};
  }
}

class QuestionDependency extends Dependency<QuestionData> {
  const QuestionDependency() : super.strong();
}

class QuestionEntity implements Entity<QuestionData, Question> {
  const QuestionEntity();

  @override
  final String tableName = 'question';

  @override
  Question fromData(
    QuestionDependency dependency,
    String id,
    QuestionData data,
  ) {
    return Question(
      id: id,
      title: data.title,
      hint: data.hint,
      isRequired: data.isRequired,
      type: data.type,
      body: data.body,
    );
  }

  @override
  Question convert(
    Question model,
    QuestionData data,
  ) =>
      model.copyWith(data);

  @override
  Question fromJson(
    String id,
    Map json,
  ) =>
      Question.fromJson(
        id,
        json,
      );

  @override
  String identify(Question model) => model.id;

  @override
  Map<String, Object?> toJson(QuestionData data) => data.toJson();
}

extension QuestionProperties on Question {
  Question copyWith(QuestionData data) {
    return Question(
      id: id,
      title: data.title,
      hint: data.hint,
      isRequired: data.isRequired,
      type: data.type,
      body: data.body,
    );
  }
}

enum QuestionBodyType { textQuestionBody, choiceQuestionBody }

sealed class QuestionBody implements _QuestionBody {
  factory QuestionBody.fromType(
    QuestionBodyType type,
    Map json,
  ) {
    switch (type) {
      case QuestionBodyType.textQuestionBody:
        return TextQuestionBody.fromJson(json);
      case QuestionBodyType.choiceQuestionBody:
        return ChoiceQuestionBody.fromJson(json);
    }
  }

  QuestionBodyType get type;
  Map<String, Object?> toJson();
}

@JsonSerializable(
  anyMap: true,
  explicitToJson: true,
)
class TextQuestionBody implements QuestionBody, _TextQuestionBody {
  factory TextQuestionBody.fromJson(Map json) =>
      _$TextQuestionBodyFromJson(json);

  const TextQuestionBody({required this.textType});

  @override
  @JsonKey(
    name: 'text-type',
    required: true,
    disallowNullValue: true,
  )
  final TextQuestionBodyType textType;

  @override
  final QuestionBodyType type = QuestionBodyType.textQuestionBody;

  @override
  Map<String, Object?> toJson() => _$TextQuestionBodyToJson(this);
}

@JsonSerializable(
  anyMap: true,
  explicitToJson: true,
)
class ChoiceQuestionBody implements QuestionBody, _ChoiceQuestionBody {
  factory ChoiceQuestionBody.fromJson(Map json) =>
      _$ChoiceQuestionBodyFromJson(json);

  const ChoiceQuestionBody({
    required this.items,
    required this.choiceType,
  });

  @override
  @JsonKey(
    name: 'items',
    required: true,
    disallowNullValue: true,
  )
  final List<String> items;

  @override
  @JsonKey(
    name: 'choice-type',
    required: true,
    disallowNullValue: true,
  )
  final ChoiceQuestionBodyType choiceType;

  @override
  final QuestionBodyType type = QuestionBodyType.choiceQuestionBody;

  @override
  Map<String, Object?> toJson() => _$ChoiceQuestionBodyToJson(this);
}

class Dorm {
  const Dorm(this._engine);

  final BaseEngine _engine;

  DatabaseEntity<QuestionData, Question> get questions => DatabaseEntity(
        const QuestionEntity(),
        engine: _engine,
      );
}
