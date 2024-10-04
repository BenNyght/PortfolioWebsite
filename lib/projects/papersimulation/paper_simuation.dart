import 'package:benjamin_portfolio/widgets/heading_0_rich.dart';
import 'package:benjamin_portfolio/widgets/heading_1.dart';
import 'package:benjamin_portfolio/widgets/image_library.dart';
import 'package:benjamin_portfolio/widgets/project_app_bar.dart';
import 'package:benjamin_portfolio/widgets/project_content.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class PaperSimulation extends StatefulWidget {
  @override
  _PaperSimulationState createState() => _PaperSimulationState();
}

class _PaperSimulationState extends State<PaperSimulation> {
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
            ProjectAppBar(title: "Paper Sorting Simulation"),
            ProjectContent(children: [
              HeadingOne("VR Paper Sorting Simulation"),
              HeadingZeroRich([
                new TextSpan(
                  text: 'Developed for the ',
                  style: new TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                new TextSpan(
                  text: "Endeavour Foundation's",
                  style: new TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                  ),
                  recognizer: new TapGestureRecognizer()
                    ..onTap = () {
                      _launchURL("https://www.endeavour.com.au/");
                    },
                ),
                new TextSpan(
                  text:
                      ' Document Destruction facilities in collaboration with the ',
                  style: new TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                new TextSpan(
                  text: "Engage Research Lab",
                  style: new TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                  ),
                  recognizer: new TapGestureRecognizer()
                    ..onTap = () {
                      _launchURL("https://engageresearch.org/");
                    },
                ),
                new TextSpan(
                  text:
                      '. This project had two primary goals—one paper sorting simulation and the second a 360 video training course. The paper sorting simulation is a training tool to teach how and what to sort from the facilities conveyor belt shredder. The 360 video training course is a multiple choice training tool to teach the safety processes of each document destruction facility.',
                  style: new TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ]),
              ImageLibrary(images: [
                "lib/projects/papersimulation/1.jpg",
                "lib/projects/papersimulation/2.jpg",
                "lib/projects/papersimulation/3.jpg",
                "lib/projects/papersimulation/4.jpg",
                "lib/projects/papersimulation/EDVR.jpg",
                "lib/projects/papersimulation/Engage-Research-Logo-Large-Dark.png",
              ]),
            ]),
          ],
        ),
      ),
    );
  }
}
