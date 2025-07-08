import 'package:flutter/material.dart';
import 'package:benjamin_portfolio/app_constants.dart';
import 'package:benjamin_portfolio/widgets/project_base_page.dart';
import 'package:benjamin_portfolio/widgets/website_button.dart';

class EasyTabletopPage extends StatelessWidget 
{
  static const routeName = '/projects/easy-tabletop';

  static const _url = 'https://easytabletop.web.app/';

  static const _images = <String>[
    'lib/projects/dndMapViewer/1.jpg',
    'lib/projects/dndMapViewer/2.jpg',
    'lib/projects/dndMapViewer/3.jpg',
    'lib/projects/dndMapViewer/4.jpg',
    'lib/projects/dndMapViewer/5.jpg',
    'lib/projects/dndMapViewer/6.jpg',
    'lib/projects/dndMapViewer/8.jpg',
    'lib/projects/dndMapViewer/11.jpg',
    'lib/projects/dndMapViewer/22.jpg',
    'lib/projects/dndMapViewer/44.jpg',
  ];

  /// Creates an [EasyTabletopPage].
  const EasyTabletopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bodyStyle = Theme.of(context)
        .textTheme
        .bodyMedium
        ?.copyWith(color: AppColors.bodyText, fontSize: 18);

    return ProjectBasePage(
      pageTitle: 'Easy Tabletop',
      heading: '🐉 Easy Tabletop',
      descriptionSpan: TextSpan(
        style: bodyStyle,
        children: <InlineSpan>[
          const TextSpan(
            text:
                'Originally created for the Dungeons and Dragons esports group at USC. '
                'This software has evolved over time and is being updated when necessary. '
                'While still being actively used in several tabletop groups.\n\n',
          ),
          TextSpan(
            text: 'Features:\n',
            style: bodyStyle?.copyWith(fontWeight: FontWeight.bold),
          ),
          const TextSpan(
            text:
                '- Load images (maps) from the computer.\n'
                '- Select menu with image preview.\n'
                '- Fog of war.\n'
                '- Camera controls: scroll to zoom, hold right-click to pan, Q/E to rotate.\n\n'
                'Timeline Library:\n'
                '- Forgotten Realms, Eberron, Dark Sun, Dragonlance, Greyhawk, '
                'Mystara, Planescape, Ravenloft, and Spelljammer.\n',
          ),
        ],
      ),
      actionButtons: const <Widget>[
        WebsiteButton(link: _url),
      ],
      images: _images,
    );
  }
}
