import 'package:flutter/material.dart';
import 'package:benjamin_portfolio/widgets/project_base_page.dart';
import 'package:benjamin_portfolio/widgets/download_button.dart';

class BattleDonutPage extends StatelessWidget 
{
  static const routeName = '/projects/battle-donut';

  static const _downloadLink = 'https://bennyght.itch.io/battledonut';

  static const _images = <String>[
    'lib/projects/battleDonut/bd1.png',
    'lib/projects/battleDonut/bd2.png',
    'lib/projects/battleDonut/bd3.png',
    'lib/projects/battleDonut/bd4.png',
    'lib/projects/battleDonut/bd5.png',
    'lib/projects/battleDonut/bd6.png',
    'lib/projects/battleDonut/bd7.png',
    'lib/projects/battleDonut/bd8.png',
    'lib/projects/battleDonut/bd9.png',
    'lib/projects/battleDonut/bd10.gif',
    'lib/projects/battleDonut/bd11.gif',
    'lib/projects/battleDonut/bd12.png',
    'lib/projects/battleDonut/bd13.png',
  ];

  const BattleDonutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProjectBasePage(
      pageTitle: 'Battle Donut',
      heading: 'Battle Donut',
      description:
        'This small game was originally designed to test and evaluate a custom built '
        'pathfinding, particle, and attacking script.\n\n'
        'Survive as long as possible, shooting and dodging bullets! Make sure to grab '
        'pickups as they give you the needed boost to survive longer.',
      actionButtons: const <Widget>[
        DownloadButton(downloadLink: _downloadLink),
      ],
      images: _images,
    );
  }
}
