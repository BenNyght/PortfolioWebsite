import 'package:benjamin_portfolio/widgets/heading_0.dart';
import 'package:benjamin_portfolio/widgets/heading_1.dart';
import 'package:benjamin_portfolio/widgets/image_library.dart';
import 'package:benjamin_portfolio/widgets/project_app_bar.dart';
import 'package:benjamin_portfolio/widgets/project_content.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Portfolio extends StatefulWidget {
  @override
  _PortfolioState createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
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
            ProjectAppBar(title: "Portfolio"),
            ProjectContent(children: [
              HeadingOne("Portfolio"),
              HeadingZero(
                  "This website was developed in Flutter/Dart. Flutter is Google's UI toolkit for building beautiful, natively compiled applications for mobile, web, desktop, and embedded devices from a single codebase."),
              ElevatedButton.icon(
                onPressed: () {
                  _launchURL("https://github.com/BenNyght/PortfolioWebsite");
                },
                icon: Icon(Icons.web),
                label: Container(
                  width: 200,
                  height: 50,
                  alignment: Alignment.center,
                  child: Text(
                    "Github",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              ImageLibrary(images: [
                "lib/projects/portfolio/portfolio1.jpg",
                "lib/projects/portfolio/portfolio2.jpg",
                "lib/projects/portfolio/portfolio3.jpg",
                "lib/projects/portfolio/portfolio4.jpg",
                "lib/projects/portfolio/portfolio5.jpg",
                "lib/projects/portfolio/portfolio6.jpg",
                "lib/projects/portfolio/portfolio7.jpg",
                "lib/projects/portfolio/portfolio8.jpg",
                "lib/projects/portfolio/portfolio9.jpg",
              ]),
            ]),
          ],
        ),
      ),
    );
  }
}
