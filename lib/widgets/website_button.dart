import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class WebsiteButton extends StatefulWidget {
  String link;

  WebsiteButton({@required this.link});

  @override
  _WebsiteButtonState createState() => _WebsiteButtonState();
}

class _WebsiteButtonState extends State<WebsiteButton> {
  void _launchURL(String _url) async => await canLaunch(_url)
      ? await launch(_url)
      : throw 'Could not launch $_url';

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {
        _launchURL(widget.link);
      },
      icon: Icon(Icons.open_in_browser),
      label: Container(
        width: 200,
        height: 50,
        alignment: Alignment.center,
        child: Text(
          "Open Easy Tabletop",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
