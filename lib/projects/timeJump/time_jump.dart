import 'package:benjamin_portfolio/widgets/download_button.dart';
import 'package:benjamin_portfolio/widgets/heading_1.dart';
import 'package:benjamin_portfolio/widgets/heading_2.dart';
import 'package:benjamin_portfolio/widgets/image_library.dart';
import 'package:benjamin_portfolio/widgets/project_app_bar.dart';
import 'package:benjamin_portfolio/widgets/project_content.dart';
import 'package:flutter/material.dart';

class TimeJump extends StatefulWidget {
  @override
  _TimeJumpState createState() => _TimeJumpState();
}

class _TimeJumpState extends State<TimeJump> {
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
            ProjectAppBar(title: "Time Jump"),
            ProjectContent(children: [
              HeadingOne("Time Jump"),
              HeadingTwo("2018 Sun Jam Submission"),
              DownloadButton(
                  downloadLink: "https://bennyght.itch.io/time-jump"),
              ImageLibrary(images: [
                "lib/projects/timeJump/tj1.png",
                "lib/projects/timeJump/tj2.jpg",
                "lib/projects/timeJump/tj3.jpg",
                "lib/projects/timeJump/tj4.jpg",
                "lib/projects/timeJump/tj5.jpg",
              ]),
            ]),
          ],
        ),
      ),
    );
  }
}
