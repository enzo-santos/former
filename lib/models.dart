import 'package:dorm_annotations/dorm_annotations.dart';
import 'package:dorm_framework/dorm_framework.dart';

part 'models.dorm.dart';

part 'models.g.dart';



sealed class _QuestionBody {}

enum TextQuestionBodyType { short, large }

@PolymorphicData(name: 'text')
abstract class _TextQuestionBody implements _QuestionBody {
  @Field(name: 'text-type')
  TextQuestionBodyType get textType;
}

enum ChoiceQuestionBodyType { radio, checkbox, dropdown }

@PolymorphicData(name: 'choice')
abstract class _ChoiceQuestionBody implements _QuestionBody {
  @Field(name: 'items')
  List<String> get items;

  @Field(name: 'choice-type')
  ChoiceQuestionBodyType get choiceType;
}

@Model(name: 'question', as: #questions)
abstract class _Question {
  @Field(name: 'title')
  String get title;

  @Field(name: 'hint')
  String get hint;

  @Field(name: 'is-required')
  bool get isRequired;

  @PolymorphicField(name: 'body', pivotName: 'type')
  _QuestionBody get body;
}
