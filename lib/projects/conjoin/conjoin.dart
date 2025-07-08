import 'package:flutter/material.dart';
import 'package:benjamin_portfolio/widgets/project_base_page.dart';
import 'package:benjamin_portfolio/widgets/google_play_button.dart';

class ConjoinPage extends StatelessWidget 
{
  static const routeName = '/projects/conjoin';

  static const _playStoreLink = 'https://play.google.com/store/apps/details?id=com.BenjaminFinlay.HexPuzzleGame';

  static const _images = <String>[
    'lib/projects/conjoin/1.jpg',
    'lib/projects/conjoin/2.jpg',
    'lib/projects/conjoin/3.jpg',
    'lib/projects/conjoin/4.jpg',
  ];

  /// Creates a [ConjoinPage].
  const ConjoinPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProjectBasePage(
      pageTitle: 'Conjoin',
      heading: 'Conjoin',
      description:
        'Conjoin! – a simple yet addictive hex‐sorting puzzle game.\n'
        'Play through dozens of levels as you “Conjoin” matching hexes and tidy up the screen. '
        'Designed to be a relaxing experience, while still challenging the toughest puzzle enthusiasts.\n\n'
        'Features:\n'
        '- Over 50 free levels\n'
        '- Clean, colourful graphics\n'
        '- Fun sound effects',
      actionButtons: const <Widget>[
        GooglePlayButton(link: _playStoreLink),
      ],
      images: _images,
    );
  }
}
