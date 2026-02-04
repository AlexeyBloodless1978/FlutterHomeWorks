import 'package:flutter/material.dart';
import 'package:quiz_app/presentation/widgets/answer_button.dart';

import '../../domain/models/models.dart';
import '../../generated/l10n.dart';

class QuestionItem extends StatefulWidget {
  final int questionsCount;
  final int index;
  final Question question;

  final void Function(bool) onAnswerQuestion;


  const QuestionItem({
    required this.index,
    required this.questionsCount,
    required this.question,
    required this.onAnswerQuestion,
    super.key});

  @override
  State<QuestionItem> createState() => _QuestionItemState();
}

class _QuestionItemState extends State<QuestionItem> {

  Question get question => widget.question;
  bool _isSelected = false;

  void _onHandleAnswer (String answer, int indexAnswer) {
    if (_isSelected) return;
    final isCorrect = question.isCorrectAnswer(indexAnswer);
    setState((){
      _isSelected = true;
    });

    Future.delayed(const Duration(seconds: 1),(){
      widget.onAnswerQuestion(isCorrect);
    });

  }


  @override
  Widget build(BuildContext context) {
    final questionText = question.question ?? '';
    final filteredAnswers = question.filteredAnswers;






    return  Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
              S.of(context).question_number(widget.index,widget.questionsCount),
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(questionText),
        ),
       Padding(
         padding: const EdgeInsets.all(16.0),
         child: ListView.separated(
           shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
           itemCount: filteredAnswers.length,
           separatorBuilder: (_, __) => const SizedBox(height: 8),
           itemBuilder: (context, index){
             final answer = filteredAnswers[index];

             return AnswerButton(
               answer: answer,
               isSelected: _isSelected,
               isCorrect: widget.question.isCorrectAnswer(index),
               onTap: () => _onHandleAnswer(answer,index),
             );
           },



          ),
       ),

      ],
    );
  }
}

