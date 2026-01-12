import 'package:flutter/material.dart';
import 'animated_box.dart';



class ContainerSwitchScreen extends StatefulWidget {
  const ContainerSwitchScreen({super.key});

  @override
  _ContainerSwitchScreenState createState() => _ContainerSwitchScreenState();
}

class _ContainerSwitchScreenState extends State<ContainerSwitchScreen> {
  bool _showFirstContainer = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Анимация контейнеров'),centerTitle: true,),
      body: GestureDetector(
        onTap: () {
          setState(() {
            _showFirstContainer = !_showFirstContainer;
          });
        },
        child: Center(
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 700),
            transitionBuilder: (Widget child, Animation<double> animation) {
              return ScaleTransition(scale: animation, child: child);
            },
            child:  AnimatedBox(
              key: ValueKey<bool>(_showFirstContainer),
              firstWidget: _showFirstContainer,
            ),
          ),
        ),
      ),
    );
  }
}

