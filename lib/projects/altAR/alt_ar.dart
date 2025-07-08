import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:benjamin_portfolio/app_constants.dart';
import 'package:benjamin_portfolio/utils/url_launcher_util.dart';
import 'package:benjamin_portfolio/widgets/project_base_page.dart';

class AltARPage extends StatelessWidget 
{
  static const routeName = '/projects/alt-ar';

  static const _images = <String>[
    'lib/projects/altAR/alt1.jpg',
    'lib/projects/altAR/alt2.jpg',
    'lib/projects/altAR/alt3.jpg',
    'lib/projects/altAR/alt4.jpg',
    'lib/projects/altAR/altAR.jpg',
  ];

  const AltARPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bodyStyle = Theme.of(context)
        .textTheme
        .bodyMedium
        ?.copyWith(color: AppColors.bodyText, fontSize: 18);

    return ProjectBasePage(
      pageTitle: 'ALT-AR',
      heading: 'ALT-AR',
      descriptionSpan: TextSpan(
        style: bodyStyle,
        children: <InlineSpan>[
          const TextSpan(
            text:
                'Funded by a Queensland Arts Grant, I worked as a Networking & VR Programmer to develop and launch Alt-AR in Unreal Engine for the ',
          ),
          TextSpan(
            text: 'Folly Games',
            style: bodyStyle?.copyWith(color: AppColors.link),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                launchUrl('https://follygames.com/');
              },
          ),
          const TextSpan(
            text:
                ' company. The game was developed to be an experience that occurs online in Virtual Reality, Mixed Reality, and in Real Life. The game was realised at the ',
          ),
          TextSpan(
            text: 'Anywhere Festival',
            style: bodyStyle?.copyWith(color: AppColors.link),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                launchUrl('https://anywhere.is/');
              },
          ),
          const TextSpan(text: ' in 2021.\n\n'),
          const TextSpan(
            text:
                'Combining ancient ceremonial knowledge and top-secret technology we will summon a being from another world. By entangling our brains with it on a quantum level we will lure it into a virtual environment that acts as an air-lock between our worlds. We would like to reassure you that all safety measures have been put in place and nothing could possibly go wrong. This experience occurs in Virtual Reality, Mixed Reality, and in Real Life.',
          ),
        ],
      ),
      videos: const <YoutubeVideoData>[
        YoutubeVideoData(title: 'Trailer', id: 'ORoaMWNqL2E'),
      ],
      images: _images,
    );
  }
}
