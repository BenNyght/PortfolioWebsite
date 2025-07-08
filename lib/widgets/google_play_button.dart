import 'package:flutter/material.dart';
import 'package:benjamin_portfolio/app_constants.dart';
import 'package:benjamin_portfolio/utils/url_launcher_util.dart';
import 'package:benjamin_portfolio/widgets/fade_in_two.dart';

/// A button that fades in and, when tapped, launches
/// the Google Play store [link].
class GooglePlayButton extends StatelessWidget {
  /// The URL to open when the button is pressed.
  final String link;

  /// Creates a Google Play button that opens [link].
  const GooglePlayButton({
    Key? key,
    required this.link,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: AppColors.primary,
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 16,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      onPressed: () => launchUrl(link),
      child: FadeInTwo(
        delay: 0.8,
        child: Image.asset(
          AppAssets.googlePlayLogo,
          fit: BoxFit.contain,
          width: 251,
        ),
      ),
    );
  }
}
