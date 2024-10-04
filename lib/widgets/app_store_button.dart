import 'package:benjamin_portfolio/widgets/fade_in_two.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class AppStoreButton extends StatefulWidget {
  final String link;

  AppStoreButton({required this.link});

  @override
  _AppStoreButtonState createState() => _AppStoreButtonState();
}

class _AppStoreButtonState extends State<AppStoreButton> {
  void _launchURL(String _url) async => await canLaunchUrlString(_url)
      ? await launchUrlString(_url)
      : throw 'Could not launch $_url';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        _launchURL(widget.link),
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 251,
          child: FadeInTwo(
            0.8,
            Image.asset(
              "assets/general/downloadonappstore.png",
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
