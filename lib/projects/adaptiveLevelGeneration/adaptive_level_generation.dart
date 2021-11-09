import 'package:benjamin_portfolio/widgets/download_button.dart';
import 'package:benjamin_portfolio/widgets/heading_0.dart';
import 'package:benjamin_portfolio/widgets/heading_1.dart';
import 'package:benjamin_portfolio/widgets/heading_2.dart';
import 'package:benjamin_portfolio/widgets/image_library.dart';
import 'package:benjamin_portfolio/widgets/project_app_bar.dart';
import 'package:benjamin_portfolio/widgets/project_content.dart';
import 'package:benjamin_portfolio/widgets/youtube_video.dart';
import 'package:flutter/material.dart';

class AdaptiveLevelGeneration extends StatefulWidget {
  @override
  _AdaptiveLevelGenerationState createState() =>
      _AdaptiveLevelGenerationState();
}

class _AdaptiveLevelGenerationState extends State<AdaptiveLevelGeneration> {
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
            ProjectAppBar(title: "Adaptive Level Generation"),
            ProjectContent(
              children: [
                HeadingOne("Adaptive Level Generation"),
                HeadingZero(
                    "Project: 'Chrono-Gate' is a thrilling first-person roguelike with time travel and shenanigains! Created using the practice-led methodology to identify core principles required for efficiently implementing adaptive level generation."),
                HeadingTwo("Research Abstract"),
                HeadingZero(
                    "Current research into adaptive level generation is significant; however, most research revolves around collecting player information rather than the application into specific use cases. Using the practice-led research methodology with Riel’s action research model, this research builds on the experience-driven procedural content generation framework, to identify three principles for converting information gathered through player experience models into adaptive level generation. These principles help to illuminate the best practices for level designers and programmers by offering a guide for practitioners attempting to implement adaptive level generation—steering them towards an efficient method that they can adapt for their own needs."),
                SizedBox(
                  height: 15,
                ),
                DownloadButton(
                    downloadLink:
                        "https://bennyght.itch.io/adaptive-level-generation"),
                SizedBox(
                  height: 15,
                ),
                YoutubeVideo(
                  title: "Trailer",
                  youtubeVideoId: "5MUb7aKNktw",
                ),
                YoutubeVideo(
                  title: "Raw Gameplay",
                  youtubeVideoId: "H9VW2SJd2wY",
                ),
                ImageLibrary(images: [
                  "lib/projects/adaptiveLevelGeneration/11.jpg",
                  "lib/projects/adaptiveLevelGeneration/22.jpg",
                  "lib/projects/adaptiveLevelGeneration/33.jpg",
                  "lib/projects/adaptiveLevelGeneration/44.jpg",
                  "lib/projects/adaptiveLevelGeneration/55.jpg",
                  "lib/projects/adaptiveLevelGeneration/66.jpg",
                  "lib/projects/adaptiveLevelGeneration/77.jpg",
                  "lib/projects/adaptiveLevelGeneration/88.png",
                  "lib/projects/adaptiveLevelGeneration/99.png",
                  "lib/projects/adaptiveLevelGeneration/111.png",
                  "lib/projects/adaptiveLevelGeneration/222.png",
                  "lib/projects/adaptiveLevelGeneration/333.png",
                ]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
