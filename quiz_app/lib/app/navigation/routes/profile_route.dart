import 'package:quiz_app/app/navigation/routes/app_route.dart';


class ProfileRoute extends AppRoute{
  static const _routeName = "profile";
  static const _routePath = "/profile";

  static const _relativePath= "profile";


@override
final String relativePath;

 // const ProfileRoute._() : super(routeName: _routeName, routePath: _routePath);

  const ProfileRoute.child({
    required String rootRouteName,
    required String rootRoutePath,
  }) : relativePath = _relativePath,
        super(
      routeName: rootRouteName + _routeName,
      routePath: rootRoutePath + _routePath);
}
