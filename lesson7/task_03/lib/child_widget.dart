import 'package:flutter/material.dart';
import 'inherited_number.dart';

class ChildWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Text(
      'Number in ChildWidget: ${InheritedNumber.of(context).number}',
    );
  }
}