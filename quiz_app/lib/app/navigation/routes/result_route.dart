import 'package:go_router/go_router.dart';
import 'package:quiz_app/app/navigation/arguments/arguments.dart';
import 'package:quiz_app/app/navigation/routes/app_route.dart';

class ResultRoute extends AppRoute{
  static const _routeName = "result";
  static const _routePath = "/result";
  static const _relativePath ="result";


  @override
  final String relativePath ;


  const ResultRoute.child(
      {
        required String rootRouteName,
        required String rootRoutePath
      }
      ): relativePath = _relativePath,super (
    routeName: rootRouteName + _routeName,
    routePath: rootRoutePath + _routePath,
  );

  void push(GoRouter router, {required String category, required int countCorrectAnswers}) {
    final arguments =ResultArguments(category: category, countCorrectAnswers: countCorrectAnswers);
    final queryParameters = arguments.toJson();

    router.pushNamed(routeName, queryParameters: queryParameters);

  }

  ResultArguments withResultArguments(Map<String,dynamic> json) {
    return ResultArguments.fromJson(json);
  }


}