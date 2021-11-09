import 'package:benjamin_portfolio/widgets/fade_in_two.dart';
import 'package:benjamin_portfolio/widgets/download_button.dart';
import 'package:benjamin_portfolio/widgets/heading_0_rich.dart';
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
    double _screenWidth = MediaQuery.of(context).size.width;
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FadeInTwo(
                    0.8,
                    Container(
                      width: _screenWidth <= 800 ? double.maxFinite : 800,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          "lib/projects/battleDonut/title.png",
                          fit: BoxFit.contain,
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                  ),
                ),
                HeadingZeroRich([
                  new TextSpan(
                    text:
                        "This small game was originally designed to test and evaluate a custom built pathfinding, particle, and attacking script.\n\n",
                    style: new TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                  new TextSpan(
                    text:
                        '"Game Idea *eats donut*... What would it be like to be a meatball on a giant donut where you fight sprinkles… sure that’s a good game idea…"\n\nSurvive as long as possible, shooting sprinkles and dodging bullets! Make sure to get pickups as they might give you the needed boost to survive longer.\n\nControls:\nMove = W,A,S,D\nShoot = Left Mouse\nAim = Aim by moving the mouse to where you would like to shoot.\nPause = Esc Key',
                    style: new TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ]),
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
