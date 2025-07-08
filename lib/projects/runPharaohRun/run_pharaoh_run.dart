import 'package:flutter/material.dart';
import 'package:benjamin_portfolio/widgets/project_base_page.dart';
import 'package:benjamin_portfolio/widgets/download_button.dart';

class RunPharaohRunPage extends StatelessWidget 
{
  static const routeName = '/projects/run-pharaoh-run';

  static const _downloadLink = 'https://bennyght.itch.io/run-pharaoh-run';

  static const _images = <String>[
    'lib/projects/runPharaohRun/rp1.png',
    'lib/projects/runPharaohRun/rp2.png',
    'lib/projects/runPharaohRun/rp3.png',
    'lib/projects/runPharaohRun/runPharaohRun.jpg',
  ];

  static const _videos = <YoutubeVideoData>[
    YoutubeVideoData(
      title: 'Gameplay',
      id: '5oxsyw_CjlA',
    ),
  ];

  const RunPharaohRunPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProjectBasePage(
      pageTitle: 'Run Pharaoh Run',
      heading: 'Run Pharaoh Run',
      description:
          '2020 Global GameJam Submission\n\n'
          'Run Pharaoh Run is a 2D procedural endless runner with quick time events '
          'and collectables. Developed during the 2020 Global GameJam on the '
          'Sunshine Coast.',
      actionButtons: const <Widget>[
        DownloadButton(downloadLink: _downloadLink),
      ],
      videos: _videos,
      images: _images,
    );
  }
}
