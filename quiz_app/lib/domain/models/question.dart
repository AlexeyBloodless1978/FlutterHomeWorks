part of 'models.dart';


@freezed
abstract class Question with _$Question{

  List<String?> get answerList => [
    answers?.answerA,
    answers?.answerB,
    answers?.answerC,
    answers?.answerD,
    answers?.answerE,
    answers?.answerF,
  ];

  List<String?> get correctAnswerList => [
    correctAnswer?.answerACorrect,
    correctAnswer?.answerBCorrect,
    correctAnswer?.answerCCorrect,
    correctAnswer?.answerDCorrect,
    correctAnswer?.answerECorrect,
    correctAnswer?.answerFCorrect,
  ];

  List<String> get filteredAnswers => answerList.nonNulls.toList();// ?? [];

  List<String> get filteredCorrectAnswers => correctAnswerList.nonNulls.toList();// ?? [];

 bool isCorrectAnswer (int answerIndex) {
   final result =
       filteredCorrectAnswers.elementAtOrNull(answerIndex) =="true";
   return result;
 }



  const Question._();

  const factory Question({

     required int? id,
     required String? question,
     required String? description,
     required Answer? answers,
    @JsonKey(name: 'multiple_correct_answer') required String? multipleCorrectAnswer,
    @JsonKey(name: 'correct_answers') required CorrectAnswer? correctAnswer,
    required String? explanation,
    required String? category,
    required String? difficulty,

  }) =_Question;

  factory Question.fromJson(Map<String,dynamic> json) =>  _$QuestionFromJson(json);

}






















// [
// {
// "id": 1,
// "question": "How to delete a directory in Linux?",
// "description": "delete folder",
// "answers": {
// "answer_a": "ls",
// "answer_b": "delete",
// "answer_c": "remove",
// "answer_d": "rmdir",
// "answer_e": null,
// "answer_f": null
// },
// "multiple_correct_answers": "false",
// "correct_answers": {
// "answer_a_correct": "false",
// "answer_b_correct": "false",
// "answer_c_correct": "false",
// "answer_d_correct": "true",
// "answer_e_correct": "false",
// "answer_f_correct": "false"
// },
// "explanation": "rmdir deletes an empty directory",
// "tip": null,
// "tags": [],
// "category": "linux",
// "difficulty": "Easy"
// }
// ]