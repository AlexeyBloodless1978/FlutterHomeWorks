import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:quiz_app/domain/auth_service.dart';
import 'package:quiz_app/presentation/providers/app_provider.dart';
import '../generated/l10n.dart';

class QuizApp extends StatefulWidget {
  final GoRouter router;
  final AuthService authService;

  const QuizApp({required this.router, required this.authService, super.key});

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  final _scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

  void _showSnackBarMessage(String message) {
    final currentState = _scaffoldMessengerKey.currentState;

    if (currentState == null) return;
    final snackBar = SnackBar(content: Text(message));
    currentState.showSnackBar(snackBar);
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AppProvider(
      authService: widget.authService,
      snackBarDispatcher: _showSnackBarMessage,
      child: MaterialApp.router(
        scaffoldMessengerKey: _scaffoldMessengerKey,
        title: 'Quiz App',
        theme: ThemeData(
          colorScheme: .fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          textTheme: TextTheme(
            titleLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
          ),
        ),
        localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        routerConfig: widget.router,
        //   home:          const HomePage(), //const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}
