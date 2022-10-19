import 'package:benjamin_portfolio/widgets/download_button.dart';
import 'package:benjamin_portfolio/widgets/heading_0.dart';
import 'package:benjamin_portfolio/widgets/heading_1.dart';
import 'package:benjamin_portfolio/widgets/heading_2.dart';
import 'package:benjamin_portfolio/widgets/image_library.dart';
import 'package:benjamin_portfolio/widgets/project_app_bar.dart';
import 'package:benjamin_portfolio/widgets/project_content.dart';
import 'package:flutter/material.dart';

import '../../widgets/app_store_button.dart';
import '../../widgets/google_play_button.dart';

class FishyBits extends StatefulWidget {
  @override
  _FishyBitsState createState() => _FishyBitsState();
}

class _FishyBitsState extends State<FishyBits> {
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
            ProjectAppBar(title: "Fishy Bits 2"),
            ProjectContent(children: [
              HeadingOne("Fishy Bits 2"),
              HeadingZero("Welcome back to the world of Bits with Fishy Bits 2! Brought to you by the creators of Fishy Bits and Monkey Ropes. Explore the depths of the ocean and eat your way to the top of the food chain! Collect coins, hatch eggs, and upgrade your fish tank in this all new Bit sized adventure!"),
              HeadingZero("Fishy Bits was a short-term project in which I worked on upgrading the project and integrating analytic tools."),
              Row(children: [
                GooglePlayButton(link: "https://play.google.com/store/apps/details?id=com.playsidestudios.fishybits2&hl=en_AU&gl=US"),
                AppStoreButton(link: "https://apps.apple.com/us/app/fishy-bits-2-fish-survival/id1276081909")], 
                mainAxisAlignment: MainAxisAlignment.center,
                ),
              ImageLibrary(images: [
                "lib/projects/fishybits2/fishybits1.png",
                "lib/projects/fishybits2/fishybits2.png",
                "lib/projects/fishybits2/fishybits3.png",
                "lib/projects/fishybits2/fishybits4.png",
              ]),
            ]),
          ],
        ),
      ),
    );
  }
}
