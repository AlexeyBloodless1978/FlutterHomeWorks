import 'package:quiz_app/app/navigation/routes/app_route.dart';

class RegisterRoute extends AppRoute {
  static const _routeName = "register";
  static const _routePath = "/register";

  const RegisterRoute._() : super(routeName: _routeName, routePath: _routePath);

  const RegisterRoute.child({
    required String rootRouteName,
    required String rootRoutePath,
  }) : super(
      routeName: rootRouteName + _routeName,
      routePath: rootRoutePath + _routePath);
}
