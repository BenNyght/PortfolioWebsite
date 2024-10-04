import 'package:benjamin_portfolio/widgets/heading_0.dart';
import 'package:benjamin_portfolio/widgets/heading_0_rich.dart';
import 'package:benjamin_portfolio/widgets/heading_1.dart';
import 'package:benjamin_portfolio/widgets/image_library.dart';
import 'package:benjamin_portfolio/widgets/project_app_bar.dart';
import 'package:benjamin_portfolio/widgets/project_content.dart';
import 'package:benjamin_portfolio/widgets/youtube_video.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class AltAR extends StatefulWidget {
  @override
  _AltARState createState() => _AltARState();
}

class _AltARState extends State<AltAR> {
  void _launchURL(String _url) async => await canLaunchUrlString(_url)
      ? await launchUrlString(_url)
      : throw 'Could not launch $_url';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: true,
        top: true,
        left: true,
        right: true,
        child: CustomScrollView(
          slivers: <Widget>[
            ProjectAppBar(title: "ALT-AR"),
            ProjectContent(children: [
              HeadingOne("ALT-AR"),
              HeadingZeroRich([
                new TextSpan(
                  text:
                      'Funded by a Queensland Arts Grant, I worked as a Networking & VR Programmer to develop and launch Alt-AR in Unreal Engine for the ',
                  style: new TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                new TextSpan(
                  text: 'Folly Games',
                  style: new TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                  ),
                  recognizer: new TapGestureRecognizer()
                    ..onTap = () {
                      _launchURL("https://follygames.com/");
                    },
                ),
                new TextSpan(
                  text:
                      ' company. The game was developed to be an expience that occurs online in Virtual Reality, Mixed Reality, and in Real Life. The game was realised at the ',
                  style: new TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                new TextSpan(
                  text: 'Anywhere Festival',
                  style: new TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                  ),
                  recognizer: new TapGestureRecognizer()
                    ..onTap = () {
                      _launchURL("https://anywhere.is/");
                    },
                ),
                new TextSpan(
                  text: ' in 2021.',
                  style: new TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ]),
              HeadingZero(
                  "Combining ancient ceremonial knowledge and top secret technology we will summon a being from another world. By entangling our brains with it on a quantum level we will lure it into a virtual environment that acts as an air-lock between our worlds. We would like to reassure you that all safety measures have been put in place and nothing could possibly go wrong. This experience occurs in Virtual Reality, Mixed Reality, and in Real Life."),
              YoutubeVideo(title: "Trailer", youtubeVideoId: "ORoaMWNqL2E"),
              ImageLibrary(images: [
                "lib/projects/altAR/alt1.jpg",
                "lib/projects/altAR/alt2.jpg",
                "lib/projects/altAR/alt3.jpg",
                "lib/projects/altAR/alt4.jpg",
                "lib/projects/altAR/altAR.jpg",
              ]),
            ]),
          ],
        ),
      ),
    );
  }
}
