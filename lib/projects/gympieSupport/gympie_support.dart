import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:benjamin_portfolio/app_constants.dart';
import 'package:benjamin_portfolio/utils/url_launcher_util.dart';
import 'package:benjamin_portfolio/widgets/project_base_page.dart';
import 'package:benjamin_portfolio/widgets/google_play_button.dart';

class GympieSupportPage extends StatelessWidget 
{
  static const routeName = '/projects/gympie-support';

  static const _images = <String>[
    'lib/projects/gympieSupport/1.jpg',
    'lib/projects/gympieSupport/2.jpg',
    'lib/projects/gympieSupport/3.jpg',
    'lib/projects/gympieSupport/4.jpg',
    'lib/projects/gympieSupport/5.jpg',
    'lib/projects/gympieSupport/6.jpg',
    'lib/projects/gympieSupport/7.jpg',
    'lib/projects/gympieSupport/8.jpg',
    'lib/projects/gympieSupport/9.jpg',
  ];

  const GympieSupportPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bodyStyle = Theme.of(context)
        .textTheme
        .bodyMedium
        ?.copyWith(color: AppColors.bodyText, fontSize: 18);

    return ProjectBasePage(
      pageTitle: 'Hometown Buddy',
      heading: 'Hometown Buddy (Gympie Region)',
      descriptionSpan: TextSpan(
        style: bodyStyle,
        children: <InlineSpan>[
          const TextSpan(text: 'Developed for the '),
          TextSpan(
            text: 'Gympie Council',
            style: bodyStyle?.copyWith(color: AppColors.link),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                launchUrl('https://www.gympie.qld.gov.au/');
              },
          ),
          const TextSpan(
            text:
                ' in an aim to give Gympie youth an easy way to access local resources in a time of need.',
          ),
        ],
      ),
      actionButtons: const <Widget>[
        GooglePlayButton(
          link:
              'https://play.google.com/store/apps/details?id=com.gympie.hometown_buddy',
        ),
      ],
      videos: const <YoutubeVideoData>[
        YoutubeVideoData(title: 'News Clip', id: '1YeKgxOzbOg'),
      ],
      images: _images,
    );
  }
}
