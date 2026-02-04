import 'package:flutter/cupertino.dart';
import 'package:quiz_app/domain/auth_service.dart';
import 'package:quiz_app/domain/quiz_service.dart';

class AppProvider extends InheritedWidget{
  final AuthService authService;
  final QuizService quizService;
  final void Function(String) snackBarDispatcher;

  const AppProvider ({
    super.key,
    required this.quizService,
    required this.authService,
    required this.snackBarDispatcher,
    required super.child}) ;

  static AppProvider of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AppProvider>()!;
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    // TODO: implement updateShouldNotify
    return false;
  }
  
}