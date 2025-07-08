import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

/// A widget that fades its [child] in with a staggered delay.
class FadeInTwo extends StatelessWidget
{
  /// Multiplier for the delay before the animation starts (e.g. 0.5 => 150ms).
  final double delay;

  /// The widget to fade in.
  final Widget child;

  /// Creates a fade-in animation with the given [delay] multiplier and [child].
  const FadeInTwo({
    Key? key,
    required this.delay,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    final tween = MovieTween()
      ..scene(
        begin: Duration.zero,
        end: const Duration(milliseconds: 500),
      ).tween(
        'opacity',
        Tween(begin: 0.0, end: 1.0),
      );

    return PlayAnimationBuilder<Movie>
    (
      tween: tween,
      duration: tween.duration,
      delay: Duration(milliseconds: (300 * delay).round()),
      builder: (
        context,
        animation,
        child,
      ) => Opacity(
        opacity: animation.get('opacity'),
        child: child,
      ),
      child: child,
    );
  }
}
