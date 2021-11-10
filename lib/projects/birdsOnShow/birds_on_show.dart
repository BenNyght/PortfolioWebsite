import 'package:benjamin_portfolio/widgets/app_store_button.dart';
import 'package:benjamin_portfolio/widgets/fade_in_two.dart';
import 'package:benjamin_portfolio/widgets/heading_0_rich.dart';
import 'package:benjamin_portfolio/widgets/heading_1.dart';
import 'package:benjamin_portfolio/widgets/image_library.dart';
import 'package:benjamin_portfolio/widgets/project_app_bar.dart';
import 'package:benjamin_portfolio/widgets/project_content.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BirdsOnShow extends StatefulWidget {
  @override
  _BirdsOnShowState createState() => _BirdsOnShowState();
}

class _BirdsOnShowState extends State<BirdsOnShow> {
  void _launchURL(String _url) async => await canLaunch(_url)
      ? await launch(_url)
      : throw 'Could not launch $_url';

  bool displayTargets = true;

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
            ProjectAppBar(title: "Birds On Show"),
            ProjectContent(children: [
              HeadingOne("Birds On Show"),
              HeadingZeroRich([
                new TextSpan(
                  text: 'Developed for ',
                  style: new TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                new TextSpan(
                  text: "Mary Cairncross Scenic Reserve's",
                  style: new TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                  ),
                  recognizer: new TapGestureRecognizer()
                    ..onTap = () {
                      _launchURL(
                          "https://mary-cairncross.sunshinecoast.qld.gov.au/");
                    },
                ),
                new TextSpan(
                  text:
                      ' Rainforest Discovery Centre, as one of their multi-sensory learning experiences.\n\nInside of the Discovery Centre there is a special wall, which comes alive in Virtual Reality. Install this app, and point your phone at the special symbols to bring the wall to life.',
                  style: new TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ]),
              AppStoreButton(
                  link:
                      "https://apps.apple.com/au/app/mary-cairncross-birds-on-show/id1477947473"),
              ImageLibrary(images: [
                "lib/projects/birdsOnShow/birds.jpg",
                "lib/projects/birdsOnShow/bird2.jpg",
                "lib/projects/birdsOnShow/bird3.jpg",
                "lib/projects/birdsOnShow/bird4.jpg",
                "lib/projects/birdsOnShow/marycairnlogo.png",
                "lib/projects/birdsOnShow/birdsOnShow.jpg",
              ]),
              ExpansionTile(
                title: Text(
                  'AR Targets',
                ),
                children: <Widget>[
                  ImageLibrary(images: [
                    "lib/projects/birdsOnShow/target1_scaled.jpg",
                    "lib/projects/birdsOnShow/target2_scaled.jpg",
                    "lib/projects/birdsOnShow/target3_scaled.jpg",
                    "lib/projects/birdsOnShow/target4_scaled.jpg",
                    "lib/projects/birdsOnShow/target5_scaled.jpg",
                  ]),
                ],
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
