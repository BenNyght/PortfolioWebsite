import 'package:benjamin_portfolio/utils/url_launcher_util.dart';
import 'package:flutter/material.dart';
import 'package:benjamin_portfolio/app_constants.dart';
import 'package:benjamin_portfolio/widgets/fade_in_two.dart';

/// A styled button for downloading the app from the App Store.
class AppStoreButton extends StatelessWidget
{
  /// The App Store URL to open.
  final String link;

  const AppStoreButton({
    Key? key,
    required this.link,
  })
    : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: TextButton(
        style: TextButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: AppColors.primary,
          elevation: 2,
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 12,
          ),
          textStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        onPressed: () => launchUrl(link),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            FadeInTwo(
              delay: 0.8,
              child: Image.asset(
                AppAssets.appStoreLogo,
                height: 24,
              ),
            ),
            const SizedBox(width: 8),
            const Text('Download on the App Store'),
          ],
        ),
      ),
    );
  }
}
