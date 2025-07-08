import 'package:flutter/material.dart';
import 'package:benjamin_portfolio/widgets/project_base_page.dart';

class AnatoMePage extends StatelessWidget 
{
  static const routeName = '/projects/anato-me';

  static const _description = 
    'AnatoME is a fresh, innovative, interactive anatomy teaching prototype conceived by '
    'a USC and Griffith University anatomy lecturer and developed by the School of Creative '
    'Industries at USC, supported by funding from both USC and Griffith University.';

  static const _videos = <YoutubeVideoData>[
    YoutubeVideoData(title: 'Trailer', id: 'WwjFFr6DTKo'),
    YoutubeVideoData(title: 'Raw Gameplay (Passthrough Disabled)', id: 'yofu7svOFY0'),
  ];

  static const _images = <String>[
    'lib/projects/anatoMe/ImageOne.jpg',
    'lib/projects/anatoMe/ImageTwo.jpg',
    'lib/projects/anatoMe/AnatoMe.png',
  ];

  const AnatoMePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProjectBasePage(
      pageTitle: 'AnatoMe',
      heading: 'AnatoMe',
      description: _description,
      videos: _videos,
      images: _images,
    );
  }
}
