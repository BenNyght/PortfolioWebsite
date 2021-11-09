import 'package:benjamin_portfolio/widgets/download_button.dart';
import 'package:benjamin_portfolio/widgets/heading_0.dart';
import 'package:benjamin_portfolio/widgets/heading_1.dart';
import 'package:benjamin_portfolio/widgets/heading_2.dart';
import 'package:benjamin_portfolio/widgets/image_library.dart';
import 'package:benjamin_portfolio/widgets/project_app_bar.dart';
import 'package:benjamin_portfolio/widgets/project_content.dart';
import 'package:flutter/material.dart';

class ApocalypseNow extends StatefulWidget {
  @override
  _ApocalypseNowState createState() => _ApocalypseNowState();
}

class _ApocalypseNowState extends State<ApocalypseNow> {
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
            ProjectAppBar(title: "Apocalypse Now"),
            ProjectContent(
              children: [
                HeadingOne("Apocalypse Now?"),
                HeadingTwo("2019 Sun Jam Submission"),
                HeadingZero(
                    "You accidentally promised an apocalypse and became a cult leader. Now the date is fast approaching, and you need to plan your escape from your adoring followers, who are going to be really disappointed, and are totally nuts.\n\nRun from your Followers and don't let them catch you!  run from your personal Apocalypse for you have denied everyone else's.\n\n2019 Sun Jam Submission.\n"),
                DownloadButton(
                    downloadLink: "https://calkettle.itch.io/apocalypse-now"),
                ImageLibrary(images: [
                  "lib/projects/apocalypseNow/ap1.jpg",
                  "lib/projects/apocalypseNow/ap2.jpg",
                  "lib/projects/apocalypseNow/ap3.jpg",
                  "lib/projects/apocalypseNow/ap4.jpg",
                  "lib/projects/apocalypseNow/ap5.jpg",
                  "lib/projects/apocalypseNow/ap6.jpg",
                ]),
                HeadingOne("Snail & Seek"),
                HeadingTwo("2019 Sun Jam Submission x2"),
                HeadingZero(
                    "Battle your friend to find out who is the best snail and who is the best robot! Made in an extra 2hrs remaining at a gamejam!"),
                DownloadButton(
                    downloadLink: "https://bennyght.itch.io/snailandseek"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
