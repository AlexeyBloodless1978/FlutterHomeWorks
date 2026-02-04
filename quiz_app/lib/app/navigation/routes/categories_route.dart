import 'package:quiz_app/app/navigation/routes/app_route.dart';

import 'questions_route.dart';


class CategoriesRoute extends AppRoute {

  static const _routeName = "categories";
  static const _routePath = "/categories";
  static const _relativePath ="categories";


  @override
  final String relativePath ;

  late final questions = QuestionsRoute.child(
      rootRouteName: routeName,
      rootRoutePath: routePath);

   CategoriesRoute.child(
  {
    required String rootRouteName,
    required String rootRoutePath
}
      ): relativePath = _relativePath,super (
    routeName: rootRouteName + _routeName,
    routePath: rootRoutePath + _routePath,
  );


}