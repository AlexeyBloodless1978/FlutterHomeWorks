part of 'models.dart';


@freezed
abstract class Answer with _$Answer{
  const Answer._();

  const factory Answer({

    @JsonKey(name: 'answer_a') required String? answerA,
    @JsonKey(name: 'answer_b')required String? answerB,
    @JsonKey(name: 'answer_c')required String? answerC,
    @JsonKey(name: 'answer_d')required String? answerD,
    @JsonKey(name: 'answer_e')required String? answerE,
    @JsonKey(name: 'answer_f') required String? answerF,

}) =_Answer;

  factory Answer.fromJson(Map<String,dynamic> json) =>  _$AnswerFromJson(json);

}

//"answer_a_correct": "false",
// "answer_b_correct": "false",
// "answer_c_correct": "false",
// "answer_d_correct": "true",
// "answer_e_correct": "false",
// "answer_f_correct": "false"