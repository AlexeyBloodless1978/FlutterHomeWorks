// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Category _$CategoryFromJson(Map<String, dynamic> json) =>
    _Category(id: (json['id'] as num).toInt(), name: json['name'] as String);

Map<String, dynamic> _$CategoryToJson(_Category instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
};

_Question _$QuestionFromJson(Map<String, dynamic> json) => _Question(
  id: (json['id'] as num?)?.toInt(),
  question: json['question'] as String?,
  description: json['description'] as String?,
  answers: json['answers'] == null
      ? null
      : Answer.fromJson(json['answers'] as Map<String, dynamic>),
  multipleCorrectAnswer: json['multiple_correct_answer'] as String?,
  correctAnswer: json['correct_answers'] == null
      ? null
      : CorrectAnswer.fromJson(json['correct_answers'] as Map<String, dynamic>),
  explanation: json['explanation'] as String?,
  category: json['category'] as String?,
  difficulty: json['difficulty'] as String?,
);

Map<String, dynamic> _$QuestionToJson(_Question instance) => <String, dynamic>{
  'id': instance.id,
  'question': instance.question,
  'description': instance.description,
  'answers': instance.answers,
  'multiple_correct_answer': instance.multipleCorrectAnswer,
  'correct_answers': instance.correctAnswer,
  'explanation': instance.explanation,
  'category': instance.category,
  'difficulty': instance.difficulty,
};

_Answer _$AnswerFromJson(Map<String, dynamic> json) => _Answer(
  answerA: json['answer_a'] as String?,
  answerB: json['answer_b'] as String?,
  answerC: json['answer_c'] as String?,
  answerD: json['answer_d'] as String?,
  answerE: json['answer_e'] as String?,
  answerF: json['answer_f'] as String?,
);

Map<String, dynamic> _$AnswerToJson(_Answer instance) => <String, dynamic>{
  'answer_a': instance.answerA,
  'answer_b': instance.answerB,
  'answer_c': instance.answerC,
  'answer_d': instance.answerD,
  'answer_e': instance.answerE,
  'answer_f': instance.answerF,
};

_CorrectAnswer _$CorrectAnswerFromJson(Map<String, dynamic> json) =>
    _CorrectAnswer(
      answerACorrect: json['answer_a_correct'] as String?,
      answerBCorrect: json['answer_b_correct'] as String?,
      answerCCorrect: json['answer_C_correct'] as String?,
      answerDCorrect: json['answer_d_correct'] as String?,
      answerECorrect: json['answer_e_correct'] as String?,
      answerFCorrect: json['answer_f_correct'] as String?,
    );

Map<String, dynamic> _$CorrectAnswerToJson(_CorrectAnswer instance) =>
    <String, dynamic>{
      'answer_a_correct': instance.answerACorrect,
      'answer_b_correct': instance.answerBCorrect,
      'answer_C_correct': instance.answerCCorrect,
      'answer_d_correct': instance.answerDCorrect,
      'answer_e_correct': instance.answerECorrect,
      'answer_f_correct': instance.answerFCorrect,
    };
