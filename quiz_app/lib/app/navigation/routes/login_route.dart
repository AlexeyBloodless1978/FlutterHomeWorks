import 'package:quiz_app/app/navigation/routes/app_route.dart';
import 'package:quiz_app/app/navigation/routes/register_route.dart';

class LoginRoute extends AppRoute{
  static const _routeName = "login";
  static const _routePath = "/login";

  late final  registerRoute = RegisterRoute.child(
      rootRouteName: routeName,
      rootRoutePath: routePath,
  );


 LoginRoute(): super(routeName: _routeName, routePath: _routePath);
}