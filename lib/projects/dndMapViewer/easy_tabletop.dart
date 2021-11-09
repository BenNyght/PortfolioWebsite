import 'package:benjamin_portfolio/widgets/heading_0.dart';
import 'package:benjamin_portfolio/widgets/heading_1.dart';
import 'package:benjamin_portfolio/widgets/heading_2.dart';
import 'package:benjamin_portfolio/widgets/image_library.dart';
import 'package:benjamin_portfolio/widgets/project_app_bar.dart';
import 'package:benjamin_portfolio/widgets/project_content.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class EasyTabletop extends StatefulWidget {
  @override
  _EasyTabletopState createState() => _EasyTabletopState();
}

class _EasyTabletopState extends State<EasyTabletop> {
  void _launchURL(String _url) async => await canLaunch(_url)
      ? await launch(_url)
      : throw 'Could not launch $_url';

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
            ProjectAppBar(title: "Easy Tabletop"),
            ProjectContent(children: [
              HeadingOne("🐉 Easy Tabletop"),
              HeadingZero(
                  "Originally created for the Dungeons and Dragons Social group at USC. This software has evolved over time and is being updated when necessary. While still being actively used in several tabletop groups."),
              SizedBox(
                height: 10,
              ),
              HeadingTwo("Features"),
              HeadingZero(
                  "Mapview:\n- Load images(maps) from the computer.\n- Select menu with image preview.\n- Fog of war.\n- Camera controls. Scroll to zoom, Hold right-click to pan the camera, Q and E to rotate.\n\nTimeline Library: \n- Mapped out timelines for Forgotten Realms, Eberron, Dark Sun, Dragonlance, Greyhawk, Mystara, Planescape, Ravenloft, and Spelljammer.\n"),
              ElevatedButton.icon(
                onPressed: () {
                  _launchURL("https://easytabletop.web.app/");
                },
                icon: Icon(Icons.open_in_browser),
                label: Container(
                  width: 200,
                  height: 50,
                  alignment: Alignment.center,
                  child: Text(
                    "Open Easy Tabletop",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              ImageLibrary(images: [
                "lib/projects/dndMapViewer/1.jpg",
                "lib/projects/dndMapViewer/2.jpg",
                "lib/projects/dndMapViewer/3.jpg",
                "lib/projects/dndMapViewer/4.jpg",
                "lib/projects/dndMapViewer/5.jpg",
                "lib/projects/dndMapViewer/6.jpg",
                "lib/projects/dndMapViewer/8.jpg",
                "lib/projects/dndMapViewer/11.jpg",
                "lib/projects/dndMapViewer/22.jpg",
                "lib/projects/dndMapViewer/44.jpg",
              ]),
            ]),
          ],
        ),
      ),
    );
  }
}
