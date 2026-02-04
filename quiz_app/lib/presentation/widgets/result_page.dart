import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_app/generated/l10n.dart';

import '../../app/navigation/routes/home_route.dart';

class ResultPage extends StatelessWidget {
  final HomeRoute homeRoute;
  final String category;
  final int countCorrectAnswers;

  const ResultPage({
    super.key,
    required this.category,
    required this.countCorrectAnswers,
    required this.homeRoute
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(S.of(context).result_title), centerTitle: true,),
      body: SafeArea(child: Center(child: Column(
        children: [
          Text(S.of(context).category(category),style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500 ),),
          const SizedBox(height: 16,),
          Text(S.of(context).count_correct_answers(countCorrectAnswers),style: TextStyle(fontSize: 16, fontWeight: FontWeight.w200 ),),
          const SizedBox(height: 16,),
          ElevatedButton(onPressed: (){
            context.go(homeRoute.routePath);
          }, child: Text(S.of(context).back_button)),

        ],
      ),
      )),
    );
  }
}
