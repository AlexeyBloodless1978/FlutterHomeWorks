import 'package:go_router/go_router.dart';
import 'package:quiz_app/app/navigation/arguments/arguments.dart';
import 'package:quiz_app/app/navigation/routes/app_route.dart';
import 'package:quiz_app/app/navigation/routes/result_route.dart';

class  QuestionsRoute extends AppRoute {
  static const _routeName = "questions";
  static const _routePath = "/questions";
  static const _relativePath ="questions";

  late final result = ResultRoute.child(
      rootRouteName: routeName,
      rootRoutePath: routePath);


  @override
  final String relativePath ;


  QuestionsRoute.child(
      {
        required String rootRouteName,
        required String rootRoutePath
      }
      ): relativePath = _relativePath,super (
    routeName: rootRouteName + _routeName,
    routePath: rootRoutePath + _routePath,
  );

  void push(GoRouter router, {required String category}) {
   final arguments =QuestionsArguments(category: category);
   final queryParameters = arguments.toJson();

   router.pushNamed(routeName, queryParameters: queryParameters);

  }

  QuestionsArguments withQuestionsArguments(Map<String,dynamic> json) {
    return QuestionsArguments.fromJson(json);
  }



}