import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:benjamin_portfolio/app_constants.dart';
import 'package:benjamin_portfolio/utils/url_launcher_util.dart';
import 'package:benjamin_portfolio/widgets/project_base_page.dart';
import 'package:benjamin_portfolio/widgets/app_store_button.dart';

class BirdsOnShowPage extends StatelessWidget 
{
  static const routeName = '/projects/birds-on-show';

  static const _appStoreLink = 'https://apps.apple.com/au/app/mary-cairncross-birds-on-show/id1477947473';

  static const _images = <String>[
    // Main gallery images
    'lib/projects/birdsOnShow/birds.jpg',
    'lib/projects/birdsOnShow/bird2.jpg',
    'lib/projects/birdsOnShow/bird3.jpg',
    'lib/projects/birdsOnShow/bird4.jpg',
    'lib/projects/birdsOnShow/marycairnlogo.png',
    'lib/projects/birdsOnShow/birdsOnShow.jpg',
    // AR targets
    'lib/projects/birdsOnShow/target1_scaled.jpg',
    'lib/projects/birdsOnShow/target2_scaled.jpg',
    'lib/projects/birdsOnShow/target3_scaled.jpg',
    'lib/projects/birdsOnShow/target4_scaled.jpg',
    'lib/projects/birdsOnShow/target5_scaled.jpg',
  ];

  const BirdsOnShowPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bodyStyle = Theme.of(context)
        .textTheme
        .bodyMedium
        ?.copyWith(color: AppColors.bodyText, fontSize: 18);

    return ProjectBasePage(
      pageTitle: 'Birds On Show',
      heading: 'Birds On Show',
      descriptionSpan: TextSpan(
        style: bodyStyle,
        children: <InlineSpan>[
          const TextSpan(text: 'Developed for '),
          TextSpan(
            text: "Mary Cairncross Scenic Reserve’s",
            style: bodyStyle?.copyWith(color: AppColors.link),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                launchUrl(
                  'https://mary-cairncross.sunshinecoast.qld.gov.au/',
                );
              },
          ),
          const TextSpan(
            text:
                ' Rainforest Discovery Centre, as one of their multi-sensory learning experiences.\n\n'
                'Inside the Discovery Centre there is a special wall that comes alive in Virtual Reality. '
                'Install this app and point your phone at the special symbols to bring the wall to life.',
          ),
        ],
      ),
      actionButtons: const <Widget>[
        AppStoreButton(link: _appStoreLink),
      ],
      images: _images,
    );
  }
}
