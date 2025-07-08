// lib/widgets/website_button.dart

import 'package:flutter/material.dart';
import 'package:benjamin_portfolio/app_constants.dart';
import 'package:benjamin_portfolio/utils/url_launcher_util.dart';

/// A button that opens a web [link] when pressed.
/// 
/// By default shows an “open in browser” icon and a [label].
class WebsiteButton extends StatelessWidget 
{
  /// The URL to launch.
  final String link;

  /// The text to display on the button.
  final String label;

  /// Creates a [WebsiteButton].
  /// 
  /// The [label] defaults to “Website” if not provided.
  const WebsiteButton({
    Key? key,
    required this.link,
    this.label = 'Website',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) 
  {
    return TextButton.icon(
      style: TextButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 16,
        ),
        textStyle: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
        minimumSize: const Size(56, 56),
        alignment: Alignment.center,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      icon: const Icon(
        Icons.open_in_browser,
        size: 20,
      ),
      label: Text(label),
      onPressed: () => launchUrl(link),
    );
  }
}
