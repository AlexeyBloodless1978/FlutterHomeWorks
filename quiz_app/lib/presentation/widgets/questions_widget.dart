import 'package:flutter/material.dart';
import 'package:quiz_app/presentation/widgets/question_item.dart';

import '../../domain/models/models.dart';

import 'package:collection/collection.dart';


class QuestionsWidget extends StatefulWidget {
  final List<Question> questions;
  final void Function(int ) onQuizFinishedHandler;

  const QuestionsWidget({
    required this.questions,
    required this.onQuizFinishedHandler,
    super.key});

  @override
  State<QuestionsWidget> createState() => _QuestionsWidgetState();
}

class _QuestionsWidgetState extends State<QuestionsWidget>
    with SingleTickerProviderStateMixin {
  List<Question> get questions => widget.questions;

  late final _tabControler = TabController(
    length: questions.length,
    vsync: this,
  );

  int _countCorrectAnswers = 0;
  int _countIncorrectAnswers = 0;

  void _onAnsweQuestion(bool  value) {
    final countAnswers = questions.length;
    final index = _tabControler.index;
    final newIndex = index+1;

    if (value) {
       _countCorrectAnswers++;
} else {
_countIncorrectAnswers++;
}

    if (newIndex<countAnswers) {
_tabControler.animateTo(newIndex) ;
} else {
      widget.onQuizFinishedHandler(_countCorrectAnswers);
}


}

  @override
  void dispose() {
    _tabControler.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      physics: const NeverScrollableScrollPhysics(),
      controller: _tabControler,
      children: questions.mapIndexed((index, e) {
        return QuestionItem(question: e, index: index, questionsCount: questions.length, onAnswerQuestion: _onAnsweQuestion,);
      }).toList(),
    );
  }
}


