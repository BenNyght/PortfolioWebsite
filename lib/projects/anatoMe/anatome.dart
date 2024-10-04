import 'package:benjamin_portfolio/widgets/heading_0.dart';
import 'package:benjamin_portfolio/widgets/heading_1.dart';
import 'package:benjamin_portfolio/widgets/image_library.dart';
import 'package:benjamin_portfolio/widgets/project_app_bar.dart';
import 'package:benjamin_portfolio/widgets/project_content.dart';
import 'package:benjamin_portfolio/widgets/youtube_video.dart';
import 'package:flutter/material.dart';

class AnatoMe extends StatefulWidget {
  @override
  _AnatoMeState createState() => _AnatoMeState();
}

class _AnatoMeState extends State<AnatoMe> {
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
            ProjectAppBar(title: "AnatoMe"),
            ProjectContent(children: [
              HeadingOne("AnatoMe"),
              HeadingZero(
                "AnatoME is a fresh, innovative, interactive anatomy teaching prototype conceived by a USC and Griffith University anatomy lecturer and developed by the School of Creative Industries at USC, supported by funding from both USC and Griffith University."),
              YoutubeVideo(
                title: "Trailer",
                youtubeVideoId: "WwjFFr6DTKo",
              ),
              YoutubeVideo(
                title: "Raw Gameplay (Passthrough Disabled)",
                youtubeVideoId: "yofu7svOFY0",
              ),
              ImageLibrary(images: [
                "lib/projects/anatoMe/ImageOne.jpg",
                "lib/projects/anatoMe/ImageTwo.jpg",
                "lib/projects/anatoMe/AnatoMe.png",
              ]),
            ]),
          ],
        ),
      ),
    );
  }
}
