import 'package:flutter/material.dart';


class FadeTransitionExample extends StatefulWidget {
  const FadeTransitionExample({super.key});

  @override
  State<FadeTransitionExample> createState() => FadeTransitionExampleState();
}

class FadeTransitionExampleState extends State<FadeTransitionExample>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 4),
      vsync: this,
    );//..repeat(reverse: true);


    /*_animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );*/



    _animation =  Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void startAnimation() {
    _controller.forward();
    _controller..repeat(reverse: true);
  }

  void stopAnimation() {
    _controller.stop();
  }


  @override
  Widget build(BuildContext context) {
   return
    FadeTransition(
        opacity: _animation,
          child: const FlutterLogo(size: 300.0),
        );
  }
}
