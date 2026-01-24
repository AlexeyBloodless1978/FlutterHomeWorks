import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_app/app/navigation/routes/app_routes.dart';
import 'package:quiz_app/domain/auth_service.dart';
import 'package:quiz_app/presentation/home_page.dart';
import 'package:quiz_app/presentation/login_page.dart';
import 'package:quiz_app/presentation/profile_page.dart';
import 'package:quiz_app/presentation/register_page.dart';

GoRouter createRouter({required AuthService authService}) {
  final appRoutes = AppRoutes();

  return GoRouter(
    initialLocation: appRoutes.login.routePath,
    refreshListenable: GoRouterRefreshStream(authService.authStatusChanged),
    redirect: (context, state) {
      final fullPath = state.uri.path;
      final isAuthenticated = authService.isAuthenticated;

      final isAuthPath = fullPath.startsWith(appRoutes.login.routePath);

      if (!isAuthPath && !isAuthenticated) {
        return appRoutes.login.routePath;
      } else if (isAuthPath && isAuthenticated){
        return appRoutes.home.routePath;
      }

      return null;
    },
    routes: [
      GoRoute(
        name: appRoutes.login.routeName,
        path: appRoutes.login.routePath,
        builder: (context, state) {
          return LoginPage(route: appRoutes.login);
        },
        routes: [
          GoRoute(
            name: appRoutes.login.registerRoute.routeName,
            path: appRoutes.login.registerRoute.routePath,
            builder: (context, state) {
              return const RegisterPage();
            },
          ),
        ],
      ),
      GoRoute(
        name: appRoutes.home.routeName,
        path: appRoutes.home.routePath,
        builder: (context, state) {
          return  HomePage(route: appRoutes.home,);
        },
        routes: [
          GoRoute(
            name: appRoutes.home.profile.routeName,
            path: appRoutes.home.profile.routePath,
            builder: (context, state) {
              return const ProfilePage();
            },
          ),
        ],
      ),
    ],
  );
}

class GoRouterRefreshStream extends ChangeNotifier {
  late final StreamSubscription<dynamic> _subscription;

  GoRouterRefreshStream(Stream<dynamic> stream) {
    notifyListeners();
    _subscription = stream. /*asBroadcastStream().*/ listen(
      (/*dynamic*/ _) => notifyListeners(),
    );
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}
