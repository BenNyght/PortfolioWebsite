import 'package:benjamin_portfolio/widgets/download_button.dart';
import 'package:benjamin_portfolio/widgets/heading_0_rich.dart';
import 'package:benjamin_portfolio/widgets/heading_1.dart';
import 'package:benjamin_portfolio/widgets/heading_2.dart';
import 'package:benjamin_portfolio/widgets/image_library.dart';
import 'package:benjamin_portfolio/widgets/project_app_bar.dart';
import 'package:benjamin_portfolio/widgets/project_content.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ThreeDAudio extends StatefulWidget {
  @override
  _ThreeDAudioState createState() => _ThreeDAudioState();
}

class _ThreeDAudioState extends State<ThreeDAudio> {
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
            ProjectAppBar(title: "3D Audio"),
            ProjectContent(
              children: [
                HeadingOne("3D Audio"),
                HeadingTwo("2020 Audio Jam Submission"),
                HeadingZeroRich([
                  new TextSpan(
                    text: 'Basic 3D audio scene using a version of ',
                    style: new TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                  new TextSpan(
                    text: "Craig Reynold's",
                    style: new TextStyle(
                      color: Colors.blue,
                      fontSize: 18,
                    ),
                    recognizer: new TapGestureRecognizer()
                      ..onTap = () {
                        _launchURL("https://www.red3d.com/cwr/boids/");
                      },
                  ),
                  new TextSpan(
                    text:
                        ' Boids. Which is a computer model of coordinated animal motion such as bird flocks and fish schools. Then placing sound nodes on each of the boids.\n\nDesigned to test sound Spatialisation and Flocking Behaviours\n\nFor the best experience use 7.1 surround sound.\n\n2020 Audio Jam Submission.\n',
                    style: new TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ]),
                DownloadButton(
                    downloadLink: "https://bennyght.itch.io/nyghts-3d-audio"),
                ImageLibrary(
                  images: [
                    "lib/projects/3dAudio/audio1.png",
                    "lib/projects/3dAudio/audioname.png",
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
