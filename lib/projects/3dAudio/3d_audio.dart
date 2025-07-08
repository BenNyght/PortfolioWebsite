import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:benjamin_portfolio/app_constants.dart';
import 'package:benjamin_portfolio/utils/url_launcher_util.dart';
import 'package:benjamin_portfolio/widgets/project_base_page.dart';
import 'package:benjamin_portfolio/widgets/download_button.dart';

class ThreeDAudioPage extends StatelessWidget 
{
  static const routeName = '/projects/3d-audio';

  static const _downloadLink =
    'https://bennyght.itch.io/nyghts-3d-audio';

  static const _images = <String>[
    'lib/projects/3dAudio/audio1.png',
    'lib/projects/3dAudio/audioname.png',
  ];

  const ThreeDAudioPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) 
  {
    final bodyStyle = Theme.of(context)
        .textTheme
        .bodyMedium
        ?.copyWith(color: AppColors.bodyText, fontSize: 18);

    return ProjectBasePage(
      pageTitle: '3D Audio',
      heading: '3D Audio',
      descriptionSpan: TextSpan(
        style: bodyStyle,
        children: <InlineSpan>[
          const TextSpan(text: 'Basic 3D audio scene using a version of '),
          TextSpan(
            text: "Craig Reynolds’s",
            style: bodyStyle?.copyWith(color: AppColors.link),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                launchUrl('https://www.red3d.com/cwr/boids/');
              },
          ),
          const TextSpan(
            text:
                ' Boids, which is a computer model of coordinated animal motion such as bird flocks and fish schools. Sound nodes were then placed on each of the boids.\n\n'
                'Designed to test sound spatialisation and flocking behaviours.\n\n'
                'For the best experience use 7.1 surround sound.\n\n'
                '2020 Audio Jam Submission.',
          ),
        ],
      ),
      actionButtons: const <Widget>[
        DownloadButton(downloadLink: _downloadLink),
      ],
      images: _images,
    );
  }
}
