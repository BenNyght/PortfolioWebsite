import 'package:flutter/material.dart';
import 'package:benjamin_portfolio/widgets/project_base_page.dart';
import 'package:benjamin_portfolio/widgets/download_button.dart';

class TimeJumpPage extends StatelessWidget 
{
  static const routeName = '/projects/time-jump';

  static const _downloadLink = 'https://bennyght.itch.io/time-jump';

  static const _images = <String>[
    'lib/projects/timeJump/tj1.png',
    'lib/projects/timeJump/tj2.jpg',
    'lib/projects/timeJump/tj3.jpg',
    'lib/projects/timeJump/tj4.jpg',
    'lib/projects/timeJump/tj5.jpg',
  ];

  const TimeJumpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProjectBasePage(
      pageTitle: 'Time Jump',
      heading: 'Time Jump',
      description: '2018 Sun Jam Submission',
      actionButtons: const <Widget>[
        DownloadButton(downloadLink: _downloadLink),
      ],
      images: _images,
    );
  }
}
