import 'package:flutter/material.dart';

class AnimatedButton extends StatefulWidget {
  final IconData icon;
  final String text;
  final Color color;
  final VoidCallback onPressed;
  final double scaleFactor;
  final Duration animationDuration;
  final EdgeInsetsGeometry padding;
  final double borderRadius;
  final List<BoxShadow>? shadows;
  final double? width; // Новая опция: фиксированная ширина
  final double? minWidth; // Новая опция: минимальная ширина
  final double? maxWidth; // Новая опция: максимальная ширина
  final MainAxisAlignment contentAlignment; // Выравнивание содержимого

  const AnimatedButton({
    Key? key,
    required this.icon,
    required this.text,
    required this.color,
    required this.onPressed,
    this.scaleFactor = 0.95,
    this.animationDuration = const Duration(milliseconds: 100),
    this.padding = const EdgeInsets.symmetric(horizontal: 30, vertical: 18),
    this.borderRadius = 15,
    this.shadows,
    this.width, // null = авто ширина по содержимому
    this.minWidth, // минимальная ширина
    this.maxWidth, // максимальная ширина
    this.contentAlignment = MainAxisAlignment.center,
  }) : super(key: key);

  @override
  _AnimatedButtonState createState() => _AnimatedButtonState();
}

class _AnimatedButtonState extends State<AnimatedButton> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => setState(() => _isPressed = true),
      onTapUp: (_) {
        setState(() => _isPressed = false);
        widget.onPressed();
      },
      onTapCancel: () => setState(() => _isPressed = false),
      child: AnimatedContainer(
        duration: widget.animationDuration,
        width: widget.width,
        // Используем заданную ширину
        constraints: BoxConstraints(
          minWidth: widget.minWidth ?? 0,
          maxWidth: widget.maxWidth ?? double.infinity,
        ),
        transform: Matrix4.identity()
          ..scale(_isPressed ? widget.scaleFactor : 1.0),
        decoration: BoxDecoration(
          color: widget.color,
          borderRadius: BorderRadius.circular(widget.borderRadius),
          boxShadow: _isPressed ? [] : widget.shadows ?? _defaultShadows(),
        ),
        padding: widget.padding,
        child: Row(
          mainAxisSize: widget.width != null
              ? MainAxisSize.max
              : MainAxisSize.min,
          mainAxisAlignment: widget.contentAlignment,
          children: [
            Icon(widget.icon, color: Colors.white, size: 22),
            SizedBox(width: 10),
            Expanded(
              child: Text(
                widget.text,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            SizedBox(width: 5),
            //   Icon(Icons.arrow_forward, color: Colors.white, size: 18),
          ],
        ),
      ),
    );
  }

  List<BoxShadow> _defaultShadows() {
    return [
      BoxShadow(
        color: widget.color.withOpacity(0.5),
        blurRadius: 10,
        offset: Offset(0, 5),
      ),
    ];
  }
}
