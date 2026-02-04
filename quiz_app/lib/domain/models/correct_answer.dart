part of 'models.dart';

@freezed
abstract class CorrectAnswer with _$CorrectAnswer{
  const CorrectAnswer._();

  const factory CorrectAnswer({
  @JsonKey(name: "answer_a_correct" ) String? answerACorrect,
  @JsonKey(name: "answer_b_correct" ) String? answerBCorrect,
  @JsonKey(name: "answer_C_correct" ) String? answerCCorrect,
  @JsonKey(name: "answer_d_correct" ) String? answerDCorrect,
  @JsonKey(name: "answer_e_correct" ) String? answerECorrect,
  @JsonKey(name: "answer_f_correct" ) String? answerFCorrect,
  }) = _CorrectAnswer;

  factory CorrectAnswer.fromJson(Map<String,dynamic> json) =>  _$CorrectAnswerFromJson(json);


}