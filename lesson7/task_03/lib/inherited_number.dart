import 'package:flutter/material.dart';


class InheritedNumber extends InheritedWidget {
  const InheritedNumber({
    required this.number,
    required super.child,
    super.key,
  });

  final int number;

  static InheritedNumber? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<InheritedNumber>();
  }

  static InheritedNumber of(BuildContext context) {
    final InheritedNumber? result = maybeOf(context);
    assert(result != null, 'No InheritedNumber found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(InheritedNumber oldWidget) =>
      number != oldWidget.number;

}