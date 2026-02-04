import 'package:quiz_app/app/navigation/routes/app_route.dart';
import 'package:quiz_app/app/navigation/routes/profile_route.dart';
import 'package:quiz_app/presentation/categories_page2.dart';

import 'categories_route.dart';


class HomeRoute extends AppRoute{
  static const _routeName = "home";
  static const _routePath = "/home";

  @override
  String get relativePath => routePath;
late final profile = ProfileRoute.child(
    rootRouteName: routeName,
    rootRoutePath: routePath);

  late final categories = CategoriesRoute.child(
      rootRouteName: routeName,
      rootRoutePath: routePath);

  HomeRoute(): super(routeName: _routeName, routePath: _routePath);

}