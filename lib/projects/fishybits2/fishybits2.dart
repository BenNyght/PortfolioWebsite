import 'package:flutter/material.dart';
import 'package:benjamin_portfolio/widgets/project_base_page.dart';
import 'package:benjamin_portfolio/widgets/google_play_button.dart';
import 'package:benjamin_portfolio/widgets/app_store_button.dart';

class FishyBitsPage extends StatelessWidget 
{
  static const routeName = '/projects/fishy-bits-2';

  static const _playStoreLink = 'https://play.google.com/store/apps/details?id=com.playsidestudios.fishybits2&hl=en_AU&gl=US';

  static const _appStoreLink = 'https://apps.apple.com/us/app/fishy-bits-2-fish-survival/id1276081909';

  static const _images = <String>[
    'lib/projects/fishybits2/fishybits1.png',
    'lib/projects/fishybits2/fishybits2.png',
    'lib/projects/fishybits2/fishybits3.png',
    'lib/projects/fishybits2/fishybits4.png',
  ];

  /// Creates a [FishyBitsPage].
  const FishyBitsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) 
  {
    return ProjectBasePage(
      pageTitle: 'Fishy Bits 2',
      heading: 'Fishy Bits 2',
      description: 
        'Welcome back to the world of Bits with Fishy Bits 2! '
        'Brought to you by the creators of Fishy Bits and Monkey Ropes. '
        'Explore the depths of the ocean and eat your way to the top of the food chain! '
        'Collect coins, hatch eggs, and upgrade your fish tank in this all new Bit sized adventure!\n\n'
        'Fishy Bits was a short-term project in which I worked on upgrading the project '
        'and integrating analytic tools.',
      actionButtons: const <Widget>[
        GooglePlayButton(link: _playStoreLink),
        AppStoreButton(link: _appStoreLink),
      ],
      images: _images,
    );
  }
}
