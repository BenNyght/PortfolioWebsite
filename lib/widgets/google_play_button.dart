import 'package:benjamin_portfolio/widgets/fade_in_two.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class GooglePlayButton extends StatefulWidget {
  final String link;

  GooglePlayButton({required this.link});

  @override
  _GooglePlayButtonState createState() => _GooglePlayButtonState();
}

class _GooglePlayButtonState extends State<GooglePlayButton> {
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
        child: FadeInTwo(
          0.8,
          Container(
            width: 251,
            child: Image.asset(
              "assets/general/getongoogleplay.png",
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
