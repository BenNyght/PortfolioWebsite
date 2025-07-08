import 'package:flutter/material.dart';
import 'package:benjamin_portfolio/widgets/project_base_page.dart';
import 'package:benjamin_portfolio/widgets/download_button.dart';

class ArchegnomeiesPage extends StatelessWidget 
{
  static const routeName = '/projects/archegnomeies';

  static const _downloadLink = 'https://bennyght.itch.io/arch-e-gnome-ies';

  static const _images = <String>[
    'lib/projects/archegnomeies/archegnomeies.png',
    'lib/projects/archegnomeies/arch1.jpg',
    'lib/projects/archegnomeies/arch2.jpg',
    'lib/projects/archegnomeies/arch3.jpg',
    'lib/projects/archegnomeies/arch4.jpg',
    'lib/projects/archegnomeies/arch5.jpg',
  ];

  const ArchegnomeiesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProjectBasePage(
      pageTitle: 'Archegnomeies',
      heading: 'Arch-e-Gnome-ies',
      description: 
        'Designed as a prototype to give young kids an introduction to the concepts '
        'of trigonometry while playing an Angry Birds–style game.',
      actionButtons: const <Widget>[
        DownloadButton(downloadLink: _downloadLink),
      ],
      images: _images,
    );
  }
}
