import 'package:benjamin_portfolio/widgets/heading_0_rich.dart';
import 'package:benjamin_portfolio/widgets/heading_1.dart';
import 'package:benjamin_portfolio/widgets/image_library.dart';
import 'package:benjamin_portfolio/widgets/project_app_bar.dart';
import 'package:benjamin_portfolio/widgets/project_content.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class VRTreadmill extends StatefulWidget {
  @override
  _VRTreadmillState createState() => _VRTreadmillState();
}

class _VRTreadmillState extends State<VRTreadmill> {
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
            ProjectAppBar(title: "VR Treadmill"),
            ProjectContent(children: [
              HeadingOne("VR Treadmill Simulation"),
              HeadingZeroRich([
                new TextSpan(
                  text: 'Developed for ',
                  style: new TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                new TextSpan(
                  text: "Afnan Bashir's",
                  style: new TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                  ),
                  recognizer: new TapGestureRecognizer()
                    ..onTap = () {
                      _launchURL(
                          "https://www.linkedin.com/in/afnan-bashir-065ab744/");
                    },
                ),
                new TextSpan(
                  text: ' HDR under the supervision of ',
                  style: new TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                new TextSpan(
                  text: "Dr Christian Jones",
                  style: new TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                  ),
                  recognizer: new TapGestureRecognizer()
                    ..onTap = () {
                      _launchURL(
                          "https://www.linkedin.com/in/christian-jones-3864678/");
                    },
                ),
                new TextSpan(
                  text:
                      ". This research aimed to compare walking in Virtual Reality on a regular treadmill compared to a 360 treadmill (Omnitread).\n\nSplit into two projects/contracts. The first project was to develop an effective way to track the participant's movement. This was done with six Vive trackers and inputting data points into a CSV file. The second project was to take the CSV and accurately recreate how the participant walked in a 3D visualizer.",
                  style: new TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ]),
              ImageLibrary(images: [
                "lib/projects/vrTreadmill/Screenshot_4.png",
                "lib/projects/vrTreadmill/Screenshot_5.png",
                "lib/projects/vrTreadmill/omnitread.jpeg",
                "lib/projects/vrTreadmill/tracker.webp",
                "lib/projects/vrTreadmill/treadmill.jpg",
              ]),
            ]),
          ],
        ),
      ),
    );
  }
}
