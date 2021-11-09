import 'package:benjamin_portfolio/widgets/fade_in_two.dart';
import 'package:benjamin_portfolio/widgets/download_button.dart';
import 'package:benjamin_portfolio/widgets/heading_0.dart';
import 'package:benjamin_portfolio/widgets/image_library.dart';
import 'package:benjamin_portfolio/widgets/project_app_bar.dart';
import 'package:benjamin_portfolio/widgets/project_content.dart';
import 'package:flutter/material.dart';

class Archegnomeies extends StatefulWidget {
  @override
  _ArchegnomeiesState createState() => _ArchegnomeiesState();
}

class _ArchegnomeiesState extends State<Archegnomeies> {
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
            ProjectAppBar(title: "Archegnomeies"),
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
                          "lib/projects/archegnomeies/archegnomeies.png",
                          fit: BoxFit.contain,
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                  ),
                ),
                HeadingZero(
                    "Designed as a prototype to give young kids an introduction to the concepts of trigonometry. While playing an angry birds style game."),
                DownloadButton(
                    downloadLink: "https://bennyght.itch.io/arch-e-gnome-ies"),
                ImageLibrary(images: [
                  "lib/projects/archegnomeies/arch1.jpg",
                  "lib/projects/archegnomeies/arch2.jpg",
                  "lib/projects/archegnomeies/arch3.jpg",
                  "lib/projects/archegnomeies/arch4.jpg",
                  "lib/projects/archegnomeies/arch5.jpg",
                ]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
