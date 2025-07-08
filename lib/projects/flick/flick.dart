import 'package:flutter/material.dart';
import 'package:benjamin_portfolio/widgets/project_base_page.dart';
import 'package:benjamin_portfolio/widgets/download_button.dart';

class FlickPage extends StatelessWidget 
{
  static const routeName = '/projects/flick';

  static const _downloadLink = 'https://bennyght.itch.io/flick';

  static const _images = <String>[
    'lib/projects/flick/flick.jpg',
    'lib/projects/flick/flick1.jpg',
    'lib/projects/flick/flick2.jpg',
    'lib/projects/flick/flick3.jpg',
    'lib/projects/flick/flick4.jpg',
    'lib/projects/flick/flick5.jpg',
    'lib/projects/flick/flick6.jpg',
  ];

  /// Creates a [FlickPage].
  const FlickPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProjectBasePage(
      pageTitle: 'Flick',
      heading: 'Flick',
      description:
          '2019 Global GameJam Submission\n\n'
          '"Dear Nox,\n'
          'There is some lasagne in the fridge and a special treat in the cookie jar. '
          'Ill be back in the morning.\n'
          'Love. Danni.\n'
          'P.S. Dont forget to turn the lights off before you go to bed."',
      actionButtons: const <Widget>[
        DownloadButton(downloadLink: _downloadLink),
      ],
      images: _images,
    );
  }
}
