import 'package:flutter/material.dart';
import 'package:quiz_app/domain/models/models.dart';
import 'package:quiz_app/generated/l10n.dart';
import 'package:quiz_app/presentation/providers/app_provider.dart';
import 'package:quiz_app/presentation/widgets/questions_widget.dart';

class QuestionsPage extends StatelessWidget {
  final String category;
  const QuestionsPage({required this.category, super.key}) ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(category),centerTitle: true,),
      body: SafeArea(
          child: FutureBuilder(
            future: AppProvider.of(context).quizService.fetchQuestions(category),
            builder: (context, snapshot) {
              final error = snapshot.error;
              final questions=snapshot.data ?? List.empty();
              final isLoading = snapshot.connectionState == ConnectionState.waiting;

              if (isLoading) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else
              if (error != null) {
                return Center(
                  child: Text(error.toString()),
                );
              }



             return QuestionsWidget(
               questions: questions,
               onQuizFinishedHandler: (countCorrectAnswers){
             },);

          },
          ),
      ),
      
    );
  }
}





