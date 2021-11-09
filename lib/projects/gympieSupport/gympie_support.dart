import 'package:benjamin_portfolio/widgets/fade_in_two.dart';
import 'package:benjamin_portfolio/widgets/heading_0_rich.dart';
import 'package:benjamin_portfolio/widgets/heading_1.dart';
import 'package:benjamin_portfolio/widgets/image_library.dart';
import 'package:benjamin_portfolio/widgets/project_app_bar.dart';
import 'package:benjamin_portfolio/widgets/project_content.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class GympieSupport extends StatefulWidget {
  @override
  _GympieSupportState createState() => _GympieSupportState();
}

class _GympieSupportState extends State<GympieSupport> {
  void _launchURL(String _url) async => await canLaunch(_url)
      ? await launch(_url)
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
            ProjectAppBar(title: "Project Manager"),
            ProjectContent(children: [
              HeadingOne("Gympie Support"),
              HeadingZeroRich([
                new TextSpan(
                  text: 'Developed for the ',
                  style: new TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                new TextSpan(
                  text: 'Gympie Council',
                  style: new TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                  ),
                  recognizer: new TapGestureRecognizer()
                    ..onTap = () {
                      _launchURL("https://www.gympie.qld.gov.au/");
                    },
                ),
                new TextSpan(
                  text:
                      ' in an aim to help give gympie youth an easy way to access local resources in a time of need.',
                  style: new TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ]),
              GestureDetector(
                onTap: () => {
                  _launchURL(
                      "https://play.google.com/store/apps/details?id=com.gympie.hometown_buddy"),
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
              ),
              ImageLibrary(images: [
                "lib/projects/gympieSupport/1.jpg",
                "lib/projects/gympieSupport/2.jpg",
                "lib/projects/gympieSupport/3.jpg",
                "lib/projects/gympieSupport/4.jpg",
                "lib/projects/gympieSupport/5.jpg",
                "lib/projects/gympieSupport/6.jpg",
                "lib/projects/gympieSupport/7.jpg",
                "lib/projects/gympieSupport/8.jpg",
                "lib/projects/gympieSupport/9.jpg",
              ]),
            ]),
          ],
        ),
      ),
    );
  }
}
