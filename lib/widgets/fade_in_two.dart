import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class FadeInTwo extends StatelessWidget {
  final double delay;
  final Widget child;

  FadeInTwo(this.delay, this.child);

  @override
  Widget build(BuildContext context) {
    final tween = MovieTween()
      ..scene(begin: Duration.zero, end: Duration(milliseconds: 500))
          .tween("opacity", Tween(begin: 0.0, end: 1.0));

    return PlayAnimationBuilder<Movie>(
      delay: Duration(milliseconds: (300 * delay).round()),
      duration: tween.duration,
      tween: tween,
      child: child,
      builder: (context, animation, child) => Opacity(
        opacity: animation.get("opacity"),
        child: child,
      ),
    );
  }
}
