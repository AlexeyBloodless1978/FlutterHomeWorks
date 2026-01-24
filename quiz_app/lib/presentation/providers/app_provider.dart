import 'package:flutter/cupertino.dart';
import 'package:quiz_app/domain/auth_service.dart';

class AppProvider extends InheritedWidget{
  final AuthService authService;
  final void Function(String) snackBarDispatcher;

  const AppProvider ({
    super.key,
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