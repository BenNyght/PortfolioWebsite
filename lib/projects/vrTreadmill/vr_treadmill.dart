import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:benjamin_portfolio/app_constants.dart';
import 'package:benjamin_portfolio/utils/url_launcher_util.dart';
import 'package:benjamin_portfolio/widgets/project_base_page.dart';

class VRTreadmillPage extends StatelessWidget 
{
  static const routeName = '/projects/vr-treadmill';

  static const _images = <String>[
    'lib/projects/vrTreadmill/Screenshot_4.png',
    'lib/projects/vrTreadmill/Screenshot_5.png',
    'lib/projects/vrTreadmill/omnitread.jpeg',
    'lib/projects/vrTreadmill/tracker.webp',
    'lib/projects/vrTreadmill/treadmill.jpg',
  ];

  const VRTreadmillPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bodyStyle = Theme.of(context)
        .textTheme
        .bodyMedium
        ?.copyWith(color: AppColors.bodyText, fontSize: 18);

    return ProjectBasePage(
      pageTitle: 'VR Treadmill',
      heading: 'VR Treadmill Simulation',
      descriptionSpan: TextSpan(
        style: bodyStyle,
        children: [
          const TextSpan(text: 'Developed for '),
          TextSpan(
            text: "Afnan Bashir’s",
            style: bodyStyle?.copyWith(color: AppColors.link),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                launchUrl(
                  'https://www.linkedin.com/in/afnan-bashir-065ab744/',
                );
              },
          ),
          const TextSpan(text: ' HDR under the supervision of '),
          TextSpan(
            text: "Dr Christian Jones",
            style: bodyStyle?.copyWith(color: AppColors.link),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                launchUrl(
                  'https://www.linkedin.com/in/dr-afnan-bashir-065ab744/',
                );
              },
          ),
          const TextSpan(
            text:
                '. This research aimed to compare walking in Virtual Reality on a regular treadmill compared to a 360 treadmill (Omnitread).\n\n',
          ),
          const TextSpan(
            text:
                'Split into two projects/contracts. The first project was to develop an effective way to track the participant’s movement. '
                'This was done with six Vive trackers and inputting data points into a CSV file. '
                'The second project was to take the CSV and accurately recreate how the participant walked in a 3D visualizer.',
          ),
        ],
      ),
      images: _images,
    );
  }
}
