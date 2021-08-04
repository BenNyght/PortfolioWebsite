import 'package:benjamin_portfolio/fade_in.dart';
import 'package:benjamin_portfolio/fade_in_two.dart';
import 'package:benjamin_portfolio/image_popup.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CityFight extends StatefulWidget {
  CityFight({Key key}) : super(key: key);

  @override
  _CityFightState createState() => _CityFightState();
}

class _CityFightState extends State<CityFight> {
  void _launchURL(String _url) async => await canLaunch(_url)
      ? await launch(_url)
      : throw 'Could not launch $_url';

  List<String> images = [
    "lib/projects/cityFight/pic1.png",
    "lib/projects/cityFight/pic2.png",
    "lib/projects/cityFight/pic3.png",
    "lib/projects/cityFight/pic4.png",
    "lib/projects/cityFight/pic5.png",
  ];

  @override
  Widget build(BuildContext context) {
    double _screenWidth = MediaQuery.of(context).size.width;
    double widthFactor = 0.75;
    if (_screenWidth > 2500) {
      widthFactor = 0.5;
    } else if (_screenWidth > 1800) {
      widthFactor = 0.6;
    } else if (_screenWidth > 1000) {
      widthFactor = 0.75;
    } else if (_screenWidth > 700) {
      widthFactor = 0.9;
    } else {
      widthFactor = 0.9;
    }

    int _crossAxisCount = 4;
    if (_screenWidth > 2500) {
      _crossAxisCount = 4;
    } else if (_screenWidth > 1800) {
      _crossAxisCount = 4;
    } else if (_screenWidth > 1000) {
      _crossAxisCount = 3;
    } else if (_screenWidth > 700) {
      _crossAxisCount = 2;
    } else {
      _crossAxisCount = 1;
    }

    return Scaffold(
      body: SafeArea(
        bottom: true,
        top: true,
        left: true,
        right: true,
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              title: Text("Cityfight"),
              backgroundColor: Color(0xFF232323),
              expandedHeight: 60,
              snap: false,
              pinned: false,
              floating: false,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: false,
                collapseMode: CollapseMode.parallax,
                background: Image.asset(
                  "assets/general/background.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  FractionallySizedBox(
                    widthFactor: widthFactor,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: FadeInTwo(
                              0.8,
                              Container(
                                width: _screenWidth <= 800
                                    ? double.maxFinite
                                    : 800,
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
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: double.maxFinite,
                              alignment: Alignment.topLeft,
                              child: RichText(
                                softWrap: true,
                                textAlign: TextAlign.left,
                                text: new TextSpan(
                                  children: [
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
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "The Urban Challenge",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF232323),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Flexible(
                                  child: Container(
                                    width: double.maxFinite,
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "This seminar explores: A 12 Vulnerabilities Construct as a way to comprehend the urban challenge; Australian Army ‘fitness for purpose’ against a range of historical urban cases; the puzzle of missing urban capability as an opportunity; and eight exploratory ‘capability constructs’.\n",
                                      softWrap: true,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
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
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "The Game",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF232323),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Flexible(
                                  child: Container(
                                    width: double.maxFinite,
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "The game is based on a single scenario from the board game, you compete directly against another player via a computer ‘hotseat’ This means that after you have your turn, you click end turn and move away so player two may sit down and plan out their round (no peeking!) Until someone either reaches the objective or vanquishes the opposing player.\n",
                                      softWrap: true,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          ElevatedButton.icon(
                            onPressed: () {
                              _launchURL("https://bennyght.itch.io/cityfight");
                            },
                            icon: Icon(Icons.file_download),
                            label: Container(
                              width: 200,
                              height: 50,
                              alignment: Alignment.center,
                              child: Text(
                                "Download",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GridView.builder(
                              shrinkWrap: true,
                              physics: ClampingScrollPhysics(),
                              padding: EdgeInsets.all(10),
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisSpacing: 10,
                                      mainAxisSpacing: 10,
                                      crossAxisCount: _crossAxisCount),
                              itemBuilder: (_, index) => FadeInTwo(
                                0.8,
                                GestureDetector(
                                  onPanDown: (_) => {
                                    ImagePopup()
                                        .openImage(context, images[index])
                                  },
                                  child: Card(
                                    elevation: 8,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          image: DecorationImage(
                                            image: AssetImage(images[index]),
                                            fit: BoxFit.cover,
                                            alignment: Alignment.center,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              itemCount: images.length,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
