import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:benjamin_portfolio/app_constants.dart';
import 'package:benjamin_portfolio/utils/url_launcher_util.dart';
import 'package:benjamin_portfolio/widgets/project_base_page.dart';

class ProjectManagerPage extends StatelessWidget 
{
  static const routeName = '/projects/project-manager';

  static const _images = <String>[
    'lib/projects/projectManager/1.jpg',
    'lib/projects/projectManager/2.jpg',
    'lib/projects/projectManager/3.jpg',
    'lib/projects/projectManager/4.jpg',
    'lib/projects/projectManager/5.jpg',
    'lib/projects/projectManager/6.jpg',
  ];

  /// Creates a [ProjectManagerPage].
  const ProjectManagerPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) 
  {
    final bodyStyle = Theme.of(context)
        .textTheme
        .bodyMedium
        ?.copyWith(color: AppColors.bodyText, fontSize: 18);

    return ProjectBasePage(
      pageTitle: 'Project Manager',
      heading: 'Project Manager',
      descriptionSpan: TextSpan(
        style: bodyStyle,
        children: <InlineSpan>[
          const TextSpan(text: 'Developed for '),
          TextSpan(
            text: 'USC CIDSEL',
            style: bodyStyle?.copyWith(color: AppColors.link),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                launchUrl(
                  'https://www.usc.edu.au/community/unisc-cidsel',
                );
              },
          ),
          const TextSpan(text:
            ' in an effort to redesign their file management and increase productivity. '
            'Developed in Flutter, I built and tested the project in approximately five months '
            'and it’s currently being actively used within the department.',
          ),
        ],
      ),
      images: _images,
    );
  }
}
