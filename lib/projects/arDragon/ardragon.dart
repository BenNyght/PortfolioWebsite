import 'package:flutter/material.dart';
import 'package:benjamin_portfolio/widgets/project_base_page.dart';
import 'package:benjamin_portfolio/widgets/app_store_button.dart';

class ArDragonPage extends StatelessWidget 
{
  static const routeName = '/projects/ar-dragon';

  static const _appStoreLink = 'https://apps.apple.com/us/app/ar-dragon/id1270046606';

  static const _images = <String>[
    'lib/projects/arDragon/ar-dragon-1.jpg',
    'lib/projects/arDragon/ar-dragon-2.jpg',
  ];

  const ArDragonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProjectBasePage(
      pageTitle: 'AR Dragon',
      heading: 'AR Dragon',
      description:
        'Augmented Reality Virtual Pet Simulator!\n\n'
        'AR Dragon was a short-term project in which I worked on upgrading the project '
        'and integrating analytic tools.',
      actionButtons: const <Widget>[
        AppStoreButton(link: _appStoreLink),
      ],
      images: _images,
    );
  }
}
