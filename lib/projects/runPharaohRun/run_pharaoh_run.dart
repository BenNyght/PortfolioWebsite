import 'package:benjamin_portfolio/widgets/download_button.dart';
import 'package:benjamin_portfolio/widgets/heading_1.dart';
import 'package:benjamin_portfolio/widgets/heading_2.dart';
import 'package:benjamin_portfolio/widgets/image_library.dart';
import 'package:benjamin_portfolio/widgets/project_app_bar.dart';
import 'package:benjamin_portfolio/widgets/project_content.dart';
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
              DownloadButton(
                  downloadLink: "https://bennyght.itch.io/run-pharaoh-run"),
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
