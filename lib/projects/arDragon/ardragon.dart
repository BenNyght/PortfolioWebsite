import 'package:benjamin_portfolio/widgets/app_store_button.dart';
import 'package:benjamin_portfolio/widgets/heading_0.dart';
import 'package:benjamin_portfolio/widgets/heading_1.dart';
import 'package:benjamin_portfolio/widgets/image_library.dart';
import 'package:benjamin_portfolio/widgets/project_app_bar.dart';
import 'package:benjamin_portfolio/widgets/project_content.dart';
import 'package:flutter/material.dart';

class ArDragon extends StatefulWidget {
  @override
  _ArDragonState createState() => _ArDragonState();
}

class _ArDragonState extends State<ArDragon> {
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
            ProjectAppBar(title: "AR Dragon"),
            ProjectContent(children: [
              HeadingOne("AR Dragon"),
              HeadingZero("Augmented Reality Virtual Pet Simulator!"),
              HeadingZero("AR Dragon was a short-term project in which I worked on upgrading the project and integrating analytic tools."),
              Row(children: [
                AppStoreButton(link: "https://apps.apple.com/us/app/ar-dragon/id1270046606")], 
                mainAxisAlignment: MainAxisAlignment.center,
                ),
              ImageLibrary(images: [
                "lib/projects/arDragon/ar-dragon-1.jpg",
                "lib/projects/arDragon/ar-dragon-2.jpg",
              ]),
            ]),
          ],
        ),
      ),
    );
  }
}
