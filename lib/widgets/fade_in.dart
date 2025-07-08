import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

/// A widget that fades and slides its [child] in with a staggered delay.
class FadeIn extends StatelessWidget
{
  /// Multiplier for the delay before the animation starts (e.g. 0.5 => 150ms).
  final double delay;

  /// The widget to animate in.
  final Widget child;

  /// Creates a fade-and-slide-in animation with the given [delay] and [child].
  const FadeIn({
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
        Tween<double>(begin: 0.0, end: 1.0),
      )
      ..scene(
        begin: Duration.zero,
        end: const Duration(milliseconds: 500),
        curve: Curves.easeOut,
      ).tween(
        'translateX',
        Tween<double>(begin: 130.0, end: 0.0),
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
        opacity: animation.get<double>('opacity'),
        child: Transform.translate(
          offset: Offset(
            animation.get<double>('translateX'),
            0.0,
          ),
          child: child,
        ),
      ),
      child: child,
    );
  }
}
