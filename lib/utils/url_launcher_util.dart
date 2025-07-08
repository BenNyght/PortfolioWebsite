import 'package:url_launcher/url_launcher_string.dart';

/// Attempts to open [url] in the default browser.
/// Logs an error if the URL cannot be launched.
Future<void> launchUrl(String url) async
{
  if (await canLaunchUrlString(url))
  {
    await launchUrlString(url);
  }
  else
  {
    // ignore: avoid_print
    print('Could not launch $url');
  }
}
