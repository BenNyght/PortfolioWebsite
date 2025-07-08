import 'package:flutter/material.dart';
import 'package:benjamin_portfolio/widgets/project_base_page.dart';
import 'package:benjamin_portfolio/widgets/download_button.dart';

class ApocalypseNowPage extends StatelessWidget 
{
  static const routeName = '/projects/apocalypse-now';

  static const _apocalypseLink = 'https://calkettle.itch.io/apocalypse-now';

  static const _snailLink = 'https://bennyght.itch.io/snailandseek';

  static const _images = <String>[
    // Apocalypse Now? screenshots
    'lib/projects/apocalypseNow/ap1.jpg',
    'lib/projects/apocalypseNow/ap2.jpg',
    'lib/projects/apocalypseNow/ap3.jpg',
    'lib/projects/apocalypseNow/ap4.jpg',
    'lib/projects/apocalypseNow/ap5.jpg',
    'lib/projects/apocalypseNow/ap6.jpg',
    // Snail & Seek screenshots
    'lib/projects/apocalypseNow/snail1.jpg',
    'lib/projects/apocalypseNow/snail2.jpg',
    'lib/projects/apocalypseNow/snail3.jpg',
  ];

  const ApocalypseNowPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProjectBasePage(
      pageTitle: 'Apocalypse Now',
      heading: 'Apocalypse Now? & Snail & Seek',
      description:
        'You accidentally promised an apocalypse and became a cult leader. '
        'Now the date is fast approaching, and you need to plan your escape '
        'from your adoring followers, who are going to be really disappointed—and are totally nuts.\n\n'
        'Run from your Followers and don’t let them catch you! '
        'Run from your personal Apocalypse for you have denied everyone else’s.\n\n'
        'Snail & Seek\n'
        'Built in Google Game Builder as an extra two-hour side project at Sun Jam 2019. '
        'Battle your friend to find out who is the best snail and who is the best robot!',
      actionButtons: const <Widget>[
        DownloadButton(downloadLink: _apocalypseLink),
        DownloadButton(downloadLink: _snailLink),
      ],
      images: _images,
    );
  }
}
