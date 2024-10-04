import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class DownloadButton extends StatefulWidget {
  final String downloadLink;
  DownloadButton({required this.downloadLink});

  @override
  _DownloadButtonState createState() => _DownloadButtonState();
}

class _DownloadButtonState extends State<DownloadButton> {
  void _launchURL(String _url) async => await canLaunchUrlString(_url)
      ? await launchUrlString(_url)
      : throw 'Could not launch $_url';

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {
        _launchURL(widget.downloadLink);
      },
      icon: Icon(Icons.file_download),
      label: Container(
        width: 200,
        height: 50,
        alignment: Alignment.center,
        child: Text(
          "Download",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
