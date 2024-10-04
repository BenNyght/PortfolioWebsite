import 'package:benjamin_portfolio/widgets/heading_0_rich.dart';
import 'package:benjamin_portfolio/widgets/heading_1.dart';
import 'package:benjamin_portfolio/widgets/image_library.dart';
import 'package:benjamin_portfolio/widgets/project_app_bar.dart';
import 'package:benjamin_portfolio/widgets/project_content.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ProjectManager extends StatefulWidget {
  @override
  _ProjectManagerState createState() => _ProjectManagerState();
}

class _ProjectManagerState extends State<ProjectManager> {
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
            ProjectAppBar(title: "Project Manager"),
            ProjectContent(children: [
              HeadingOne("Project Manager"),
              HeadingZeroRich([
                new TextSpan(
                  text: 'Developed for ',
                  style: new TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                new TextSpan(
                  text: 'USC CIDSEL',
                  style: new TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                  ),
                  recognizer: new TapGestureRecognizer()
                    ..onTap = () {
                      _launchURL(
                          "https://www.usc.edu.au/community/international-development");
                    },
                ),
                new TextSpan(
                  text:
                      ' in an effort to redesign their file management and increase productivity. Developed in Flutter, I built and tested the project in approximatly 5 months and is currently being actively used within the Department',
                  style: new TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ]),
              ImageLibrary(images: [
                "lib/projects/projectManager/1.jpg",
                "lib/projects/projectManager/2.jpg",
                "lib/projects/projectManager/3.jpg",
                "lib/projects/projectManager/4.jpg",
                "lib/projects/projectManager/5.jpg",
                "lib/projects/projectManager/6.jpg",
              ]),
            ]),
          ],
        ),
      ),
    );
  }
}
