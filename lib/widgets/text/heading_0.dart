import 'package:benjamin_portfolio/app_constants.dart';
import 'package:flutter/material.dart';

/// A paragraph widget styled according to the project theme.
class HeadingZero extends StatelessWidget 
{
  /// The text to display.
  final String text;

  /// Creates a [HeadingZero] with the given [text].
  const HeadingZero(
    this.text, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) 
  {
    final textStyle = Theme.of(context)
        .textTheme
        .bodyMedium
        ?.copyWith(fontSize: 18, color: AppColors.bodyText);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SelectableText(
        text,
        style: textStyle,
        textAlign: TextAlign.justify,
      ),
    );
  }
}
