import 'package:flutter/material.dart';

class TextAnimation extends StatefulWidget {
  final Widget child;
  const TextAnimation({
    super.key,
    required this.child,
  });

  @override
  State<TextAnimation> createState() => _TextAnimationState();
}

class _TextAnimationState extends State<TextAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return SizeTransition(
      sizeFactor: Tween<double>(begin: 0, end: 1).animate(
          CurvedAnimation(parent: animationController, curve: Curves.easeIn)),
      axisAlignment: 1,
      child: widget.child,
    );
  }
}
