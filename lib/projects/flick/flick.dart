import 'package:benjamin_portfolio/widgets/download_button.dart';
import 'package:benjamin_portfolio/widgets/heading_0.dart';
import 'package:benjamin_portfolio/widgets/heading_1.dart';
import 'package:benjamin_portfolio/widgets/heading_2.dart';
import 'package:benjamin_portfolio/widgets/image_library.dart';
import 'package:benjamin_portfolio/widgets/project_app_bar.dart';
import 'package:benjamin_portfolio/widgets/project_content.dart';
import 'package:flutter/material.dart';

class Flick extends StatefulWidget {
  @override
  _FlickState createState() => _FlickState();
}

class _FlickState extends State<Flick> {
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
            ProjectAppBar(title: "assets/general/background.jpg"),
            ProjectContent(children: [
              HeadingOne("Flick"),
              HeadingTwo("2019 Global GameJam Submission"),
              HeadingZero(
                  '"Dear Nox,\nThere is some lasagne in the fridge and a special treat in the cookie jar. Ill be back in the morning.\nLove. Danni.\nP.S. Dont forget to turn the lights off before you go to bed."'),
              DownloadButton(downloadLink: "https://bennyght.itch.io/flick"),
              ImageLibrary(images: [
                "lib/projects/flick/flick.jpg",
                "lib/projects/flick/flick1.jpg",
                "lib/projects/flick/flick2.jpg",
                "lib/projects/flick/flick3.jpg",
                "lib/projects/flick/flick4.jpg",
                "lib/projects/flick/flick5.jpg",
                "lib/projects/flick/flick6.jpg",
              ]),
            ]),
          ],
        ),
      ),
    );
  }
}
