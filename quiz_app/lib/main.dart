import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:go_router/go_router.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:intl/intl.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:json_serializable/json_serializable.dart';
import 'package:quiz_app/app/navigation/app_router.dart';
import 'package:quiz_app/app/qutz_app.dart';
import 'package:quiz_app/domain/auth_service.dart';
import 'package:quiz_app/domain/quiz_service.dart';
import 'package:quiz_app/firebase_options.dart';
import 'generated/l10n.dart';



Dio _createDio(){
  final options = BaseOptions(
    connectTimeout: const Duration(seconds: 10),
    receiveTimeout: const Duration(seconds: 10),
    baseUrl: "https://quizapi.io/api",
    queryParameters: {'apiKey':dotenv.get("API_KEY")},
  );
    return Dio(options);
}

final _dio = _createDio();
final _QuizSrevice = QuizServiceImpl(dio: _dio);


final _router = createRouter(authService: _authService);
final _authService = AuthServiceImpl(firebaseAuth: FirebaseAuth.instance);


Future<void> main() async {
  await dotenv.load(fileName: "asset/.env");
  WidgetsFlutterBinding.ensureInitialized();

 //await dotenv.load(fileName: '.env');

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(QuizApp(router: _router, authService: _authService, quizService: _QuizSrevice));
}



/*

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Center(child: Text(S.of(context).hello))),
    );
  }
}
*/

/*
 localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
  S.delegate,
  GlobalMaterialLocalizations.delegate,
  GlobalWidgetsLocalizations.delegate,
  GlobalCupertinoLocalizations.delegate,
],
supportedLocales: S.delegate.supportedLocales,*/
