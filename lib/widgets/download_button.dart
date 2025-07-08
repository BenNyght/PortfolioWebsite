import 'package:flutter/material.dart';
import 'package:benjamin_portfolio/app_constants.dart';
import 'package:benjamin_portfolio/utils/url_launcher_util.dart';

/// A styled download button that opens the provided [downloadLink].
class DownloadButton extends StatelessWidget
{
  /// The URL to launch when the button is pressed.
  final String downloadLink;

  const DownloadButton({
    Key? key,
    required this.downloadLink,
  }) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
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
        icon: const Icon(
          Icons.file_download,
          size: 20,
        ),
        label: const Text('Download'),
        onPressed: () => launchUrl(downloadLink),
      ),
    );
  }
}
