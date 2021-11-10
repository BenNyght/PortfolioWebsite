import 'package:benjamin_portfolio/widgets/download_button.dart';
import 'package:benjamin_portfolio/widgets/heading_0.dart';
import 'package:benjamin_portfolio/widgets/heading_0_rich.dart';
import 'package:benjamin_portfolio/widgets/heading_1.dart';
import 'package:benjamin_portfolio/widgets/image_library.dart';
import 'package:benjamin_portfolio/widgets/project_app_bar.dart';
import 'package:benjamin_portfolio/widgets/project_content.dart';
import 'package:flutter/material.dart';

class BattleDonut extends StatefulWidget {
  @override
  _BattleDonutState createState() => _BattleDonutState();
}

class _BattleDonutState extends State<BattleDonut> {
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
            ProjectAppBar(title: "Battle Donut"),
            ProjectContent(
              children: [
                HeadingOne("Battle Donut"),
                HeadingZero(
                    "This small game was originally designed to test and evaluate a custom built pathfinding, particle, and attacking script.\n\nSurvive as long as possible, shooting and dodging bullets! Make sure to grab pickups as they give you the needed boost to survive longer.\n"),
                DownloadButton(
                    downloadLink: "https://bennyght.itch.io/battledonut"),
                ImageLibrary(images: [
                  "lib/projects/battleDonut/bd1.png",
                  "lib/projects/battleDonut/bd2.png",
                  "lib/projects/battleDonut/bd3.png",
                  "lib/projects/battleDonut/bd4.png",
                  "lib/projects/battleDonut/bd5.png",
                  "lib/projects/battleDonut/bd6.png",
                  "lib/projects/battleDonut/bd7.png",
                  "lib/projects/battleDonut/bd8.png",
                  "lib/projects/battleDonut/bd9.png",
                  "lib/projects/battleDonut/bd10.gif",
                  "lib/projects/battleDonut/bd11.gif",
                  "lib/projects/battleDonut/bd12.png",
                  "lib/projects/battleDonut/bd13.png",
                ]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
