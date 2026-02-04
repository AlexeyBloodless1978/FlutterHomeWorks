import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_app/app/navigation/routes/app_routes.dart';
import 'package:quiz_app/domain/auth_service.dart';
import 'package:quiz_app/presentation/widgets/home_page.dart';
import 'package:quiz_app/presentation/widgets/login_page.dart';
import 'package:quiz_app/presentation/widgets/profile_page.dart';
import 'package:quiz_app/presentation/widgets/register_page.dart';
import 'package:quiz_app/presentation/widgets/questions_page.dart';
import 'package:quiz_app/presentation/widgets/result_page.dart';

import '../../presentation/widgets/categories_page.dart';

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
            path: appRoutes.login.registerRoute.relativePath,
            builder: (context, state) {
              return const RegisterPage();
            },
          ),
        ],
      ),
      GoRoute(
        name: appRoutes.home.routeName,
        path: appRoutes.home.relativePath,
        builder: (context, state) {
          return  HomePage(route: appRoutes.home,);
        },
        routes: [
          GoRoute(
            name: appRoutes.home.profile.routeName,
            path: appRoutes.home.profile.relativePath,
            builder: (context, state) {
              return const ProfilePage();
            },
          ),
          GoRoute(
            name: appRoutes.home.categories.routeName,
            path: appRoutes.home.categories.relativePath,
            builder: (context, state) {
              return CategoriesPage(route : appRoutes.home.categories );
            },
            routes: [
              GoRoute(
                name: appRoutes.home.categories.questions.routeName,
                path: appRoutes.home.categories.questions.relativePath,
                builder: (context, state) {
                  final arguments = appRoutes.home.categories.questions.withQuestionsArguments(state.uri.queryParameters);
            //      state.pathParameters['id'];//первый способ
             //     state.uri.queryParameters['id'];//второй способ

                  return QuestionsPage(category: arguments.category);
                },
                routes: [
                  GoRoute(
                    name: appRoutes.home.categories.questions.result.routeName,
                    path: appRoutes.home.categories.questions.result.relativePath,
                    builder: (context, state) {

                      final arguments =  appRoutes.home.categories.questions.result.withResultArguments(state.uri.queryParameters);

                      return ResultPage(
                          category: arguments.category,
                          countCorrectAnswers: arguments.countCorrectAnswers,
                          homeRoute: appRoutes.home
                      );
                    },
                  ),
                ]

              ),
            ],
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
