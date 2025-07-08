import 'package:flutter/material.dart';
import 'package:benjamin_portfolio/widgets/project_base_page.dart';
import 'package:benjamin_portfolio/widgets/download_button.dart';

class AdaptiveLevelGenerationPage extends StatelessWidget 
{
  static const routeName = '/projects/adaptive-level-generation';

  static const _downloadLink = 'https://bennyght.itch.io/adaptive-level-generation';

  static const _videos = <YoutubeVideoData>[
    YoutubeVideoData(title: 'Trailer', id: '5MUb7aKNktw'),
    YoutubeVideoData(title: 'Raw Gameplay', id: 'H9VW2SJd2wY'),
  ];

  static const _images = <String>[
    'lib/projects/adaptiveLevelGeneration/11.jpg',
    'lib/projects/adaptiveLevelGeneration/22.jpg',
    'lib/projects/adaptiveLevelGeneration/33.jpg',
    'lib/projects/adaptiveLevelGeneration/44.jpg',
    'lib/projects/adaptiveLevelGeneration/55.jpg',
    'lib/projects/adaptiveLevelGeneration/66.jpg',
    'lib/projects/adaptiveLevelGeneration/77.jpg',
    'lib/projects/adaptiveLevelGeneration/88.png',
    'lib/projects/adaptiveLevelGeneration/99.png',
    'lib/projects/adaptiveLevelGeneration/111.png',
    'lib/projects/adaptiveLevelGeneration/222.png',
    'lib/projects/adaptiveLevelGeneration/333.png',
  ];

  const AdaptiveLevelGenerationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProjectBasePage(
      pageTitle: 'Adaptive Level Generation',
      heading: 'Adaptive Level Generation',
      description:
        'Project “Chrono-Gate” is a thrilling first-person roguelike with time travel and shenanigains! '
        'Created using a practice-led methodology to identify core principles for efficiently implementing adaptive level generation.\n\n'
        'Research Abstract\n'
        'Current research into adaptive level generation is significant; however, most work collects player data rather than applying it to concrete use cases. '
        'Using practice-led research and Riel’s action research model, this project builds on the experience-driven procedural content generation framework to identify three principles '
        'for converting player-experience data into adaptive level generation. These principles guide level designers and programmers toward an efficient, adaptable workflow.',
      actionButtons: const <Widget>[
        DownloadButton(downloadLink: _downloadLink),
      ],
      videos: _videos,
      images: _images,
    );
  }
}
