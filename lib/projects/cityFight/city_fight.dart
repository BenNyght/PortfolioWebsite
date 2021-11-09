import 'package:benjamin_portfolio/widgets/fade_in_two.dart';
import 'package:benjamin_portfolio/widgets/download_button.dart';
import 'package:benjamin_portfolio/widgets/heading_0.dart';
import 'package:benjamin_portfolio/widgets/heading_0_rich.dart';
import 'package:benjamin_portfolio/widgets/heading_2.dart';
import 'package:benjamin_portfolio/widgets/image_library.dart';
import 'package:benjamin_portfolio/widgets/project_app_bar.dart';
import 'package:benjamin_portfolio/widgets/project_content.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CityFight extends StatefulWidget {
  @override
  _CityFightState createState() => _CityFightState();
}

class _CityFightState extends State<CityFight> {
  void _launchURL(String _url) async => await canLaunch(_url)
      ? await launch(_url)
      : throw 'Could not launch $_url';

  @override
  Widget build(BuildContext context) {
    double _screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        bottom: true,
        top: true,
        left: true,
        right: true,
        child: CustomScrollView(
          slivers: <Widget>[
            ProjectAppBar(title: "Cityfight"),
            ProjectContent(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FadeInTwo(
                    0.8,
                    Container(
                      width: _screenWidth <= 800 ? double.maxFinite : 800,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          "lib/projects/cityFight/cityfighttitle.png",
                          fit: BoxFit.contain,
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                  ),
                ),
                HeadingZeroRich([
                  new TextSpan(
                    text: 'Developed for ',
                    style: new TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                  new TextSpan(
                    text: "Dr Charles Knight",
                    style: new TextStyle(
                      color: Colors.blue,
                      fontSize: 18,
                    ),
                    recognizer: new TapGestureRecognizer()
                      ..onTap = () {
                        _launchURL(
                            "https://www.linkedin.com/in/charles-knight-36707367/");
                      },
                  ),
                  new TextSpan(
                    text:
                        ' to prototype the idea of using games to teach urban combat strategies to the Australian Army. In an effort to overcome the "',
                    style: new TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                  new TextSpan(
                    text: "Urban Challenge",
                    style: new TextStyle(
                      color: Colors.blue,
                      fontSize: 18,
                    ),
                    recognizer: new TapGestureRecognizer()
                      ..onTap = () {
                        _launchURL(
                            "https://www.linkedin.com/in/charles-knight-36707367/");
                      },
                  ),
                  new TextSpan(
                    text: '"\n\n',
                    style: new TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ]),
                HeadingTwo("The Urban Challenge"),
                HeadingZero(
                    "This seminar explores: A 12 Vulnerabilities Construct as a way to comprehend the urban challenge; Australian Army ‘fitness for purpose’ against a range of historical urban cases; the puzzle of missing urban capability as an opportunity; and eight exploratory ‘capability constructs’.\n"),
                ElevatedButton.icon(
                  onPressed: () {
                    _launchURL(
                        "https://researchcentre.army.gov.au/library/seminar-series/urban-challenge");
                  },
                  icon: Icon(Icons.play_arrow),
                  label: Container(
                    width: 200,
                    height: 50,
                    alignment: Alignment.center,
                    child: Text(
                      "The Urban Challenge",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                HeadingTwo("The Game"),
                HeadingZero(
                    "The game is based on a single scenario from the board game, you compete directly against another player via a computer ‘hotseat’ This means that after you have your turn, you click end turn and move away so player two may sit down and plan out their round (no peeking!) Until someone either reaches the objective or vanquishes the opposing player.\n"),
                DownloadButton(
                    downloadLink: "https://bennyght.itch.io/cityfight"),
                ImageLibrary(images: [
                  "lib/projects/cityFight/pic1.png",
                  "lib/projects/cityFight/pic2.png",
                  "lib/projects/cityFight/pic3.png",
                  "lib/projects/cityFight/pic4.png",
                  "lib/projects/cityFight/pic5.png",
                ]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
