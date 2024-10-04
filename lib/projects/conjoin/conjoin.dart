import 'package:benjamin_portfolio/widgets/fade_in_two.dart';
import 'package:benjamin_portfolio/widgets/google_play_button.dart';
import 'package:benjamin_portfolio/widgets/heading_0.dart';
import 'package:benjamin_portfolio/widgets/image_library.dart';
import 'package:benjamin_portfolio/widgets/project_app_bar.dart';
import 'package:benjamin_portfolio/widgets/project_content.dart';
import 'package:flutter/material.dart';

class Conjoin extends StatefulWidget {
  @override
  _ConjoinState createState() => _ConjoinState();
}

class _ConjoinState extends State<Conjoin> {
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
            ProjectAppBar(title: "Conjoin"),
            ProjectContent(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FadeInTwo(
                  0.8,
                  Container(
                    width: _screenWidth <= 800 ? double.maxFinite : 800,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        "lib/projects/conjoin/ConjoinLogo.png",
                        fit: BoxFit.contain,
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                ),
              ),
              HeadingZero(
                  "Conjoin! – A Simple yet addictive hex sorting puzzle game.\nPlay through dozens of levels, as you “Conjoin” matching hex’s and tidy up the screen. Designed to a be a simple and relaxing time. While challenging some of the toughest puzzle enthusiasts.\nFeatures:\n- Over 50+ Free Levels\n- Clean and Colourful Graphics\n- Fun Sound Effects"),
              GooglePlayButton(
                  link:
                      "https://play.google.com/store/apps/details?id=com.BenjaminFinlay.HexPuzzleGame"),
              ImageLibrary(images: [
                "lib/projects/conjoin/1.jpg",
                "lib/projects/conjoin/2.jpg",
                "lib/projects/conjoin/3.jpg",
                "lib/projects/conjoin/4.jpg",
              ]),
            ]),
          ],
        ),
      ),
    );
  }
}
