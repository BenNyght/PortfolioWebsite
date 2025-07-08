import 'package:flutter/material.dart';
import 'package:benjamin_portfolio/widgets/app_store_button.dart';
import 'package:benjamin_portfolio/widgets/google_play_button.dart';
import 'package:benjamin_portfolio/widgets/project_base_page.dart';

class GameOfThronesWFWPage extends StatelessWidget 
{
  static const routeName = '/projects/game-of-thrones-wfw';

  static const _playLink = 'https://play.google.com/store/apps/details?id=com.shibagames.shibawoof&hl=en_AU&gl=US';

  static const _appLink  = 'https://apps.apple.com/au/app/shiba-eternity/id1633003122';

  static const _images   = <String>[
      "lib/projects/shibaeternity/shibaeternity1.png",
      "lib/projects/shibaeternity/shibaeternity2.png",
      "lib/projects/shibaeternity/shibaeternity3.png",
      "lib/projects/shibaeternity/shibaeternity4.png",
      "lib/projects/shibaeternity/shibaeternity5.png",
     ];

  const GameOfThronesWFWPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProjectBasePage(
      pageTitle: 'Shiba Eternity',
      heading: 'Shiba Eternity',
      description: 'Time to enter the Dogjo! Collect awe-inspiring cards to craft your perfect deck then train with your own unique Shiboshis and take to the world to defeat all of your friends and foes alike! Outwit your challengers and build your Shib Army in SHIBA ETERNITY! And yes, you can pat the dog!',
      actionButtons: const <Widget>[
        GooglePlayButton(link: _playLink),
        AppStoreButton(link: _appLink),
      ],
      videos: const <YoutubeVideoData>[
        YoutubeVideoData(title: 'Gameplay', id: 'WqYUIi0Fm9c'),
        YoutubeVideoData(title: 'Review',   id: 'eAGgE37wYlA'),
      ],
      images: _images,
    );
  }
}
