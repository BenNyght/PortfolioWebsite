import 'package:benjamin_portfolio/widgets/download_button.dart';
import 'package:benjamin_portfolio/widgets/heading_0.dart';
import 'package:benjamin_portfolio/widgets/heading_1.dart';
import 'package:benjamin_portfolio/widgets/heading_2.dart';
import 'package:benjamin_portfolio/widgets/image_library.dart';
import 'package:benjamin_portfolio/widgets/project_app_bar.dart';
import 'package:benjamin_portfolio/widgets/project_content.dart';
import 'package:benjamin_portfolio/widgets/youtube_video.dart';
import 'package:flutter/material.dart';

class RunPharaohRun extends StatefulWidget {
  @override
  _RunPharaohRunState createState() => _RunPharaohRunState();
}

class _RunPharaohRunState extends State<RunPharaohRun> {
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
            ProjectAppBar(title: "Run Pharaoh Run"),
            ProjectContent(children: [
              HeadingOne("Run Pharaoh Run"),
              HeadingTwo("2020 Global GameJam Submission"),
              HeadingZero(
                  "Run Pharaoh Run is a 2D procedural endless runner with quick time events and collectables. Developed during the 2020 Global Gamejam on the Sunshine Coast."),
              DownloadButton(
                  downloadLink: "https://bennyght.itch.io/run-pharaoh-run"),
              YoutubeVideo(title: "Gameplay", youtubeVideoId: "5oxsyw_CjlA"),
              ImageLibrary(images: [
                "lib/projects/runPharaohRun/rp1.png",
                "lib/projects/runPharaohRun/rp2.png",
                "lib/projects/runPharaohRun/rp3.png",
                "lib/projects/runPharaohRun/runPharaohRun.jpg",
              ]),
            ]),
          ],
        ),
      ),
    );
  }
}
