import 'package:benjamin_portfolio/widgets/app_store_button.dart';
import 'package:benjamin_portfolio/widgets/google_play_button.dart';
import 'package:benjamin_portfolio/widgets/heading_0.dart';
import 'package:benjamin_portfolio/widgets/heading_1.dart';
import 'package:benjamin_portfolio/widgets/image_library.dart';
import 'package:benjamin_portfolio/widgets/project_app_bar.dart';
import 'package:benjamin_portfolio/widgets/project_content.dart';
import 'package:benjamin_portfolio/widgets/youtube_video.dart';
import 'package:flutter/material.dart';

class ShibaEternity extends StatefulWidget {
  @override
  _ShibaEternityState createState() => _ShibaEternityState();
}

class _ShibaEternityState extends State<ShibaEternity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: true,
        top: true,
        left: true,
        right: true,
        child: CustomScrollView(
          slivers: <Widget>[
            ProjectAppBar(title: "Shiba Eternity"),
            ProjectContent(children: [
              HeadingOne("Shiba Eternity"),
              HeadingZero("Time to enter the Dogjo! Collect awe-inspiring cards to craft your perfect deck then train with your own unique Shiboshis and take to the world to defeat all of your friends and foes alike! Outwit your challengers and build your Shib Army in SHIBA ETERNITY! And yes, you can pat the dog!"),
              Row(children: [
                GooglePlayButton(link: "https://play.google.com/store/apps/details?id=com.shibagames.shibawoof&hl=en_AU&gl=US"),
                AppStoreButton(link: "https://apps.apple.com/au/app/shiba-eternity/id1633003122")], 
                mainAxisAlignment: MainAxisAlignment.center,
              ),
              YoutubeVideo(
                title: "Gameplay",
                youtubeVideoId: "WqYUIi0Fm9c",
              ),
              YoutubeVideo(
                title: "Review",
                youtubeVideoId: "eAGgE37wYlA",
              ),
              ImageLibrary(images: [
                "lib/projects/shibaeternity/shibaeternity1.png",
                "lib/projects/shibaeternity/shibaeternity2.png",
                "lib/projects/shibaeternity/shibaeternity3.png",
                "lib/projects/shibaeternity/shibaeternity4.png",
                "lib/projects/shibaeternity/shibaeternity5.png",
              ]),
            ]),
          ],
        ),
      ),
    );
  }
}
