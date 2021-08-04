import 'package:benjamin_portfolio/fade_in.dart';
import 'package:benjamin_portfolio/fade_in_two.dart';
import 'package:benjamin_portfolio/projects_list.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:benjamin_portfolio/image_popup.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class PaperSimulation extends StatefulWidget {
  PaperSimulation({Key key}) : super(key: key);

  @override
  _PaperSimulationState createState() => _PaperSimulationState();
}

class _PaperSimulationState extends State<PaperSimulation> {
  void _launchURL(String _url) async => await canLaunch(_url)
      ? await launch(_url)
      : throw 'Could not launch $_url';

  List<String> images = [
    "lib/projects/papersimulation/1.jpg",
    "lib/projects/papersimulation/2.jpg",
    "lib/projects/papersimulation/3.jpg",
    "lib/projects/papersimulation/4.jpg",
    "lib/projects/papersimulation/EDVR.jpg",
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
      _crossAxisCount = 3;
    } else if (_screenWidth > 1800) {
      _crossAxisCount = 3;
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
              title: Text("Paper Sorting Simulation"),
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
                          Text(
                            "ALT-AR",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF232323),
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
                                      text: 'Developed for the ',
                                      style: new TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                      ),
                                    ),
                                    new TextSpan(
                                      text: 'Endeavour Foundation',
                                      style: new TextStyle(
                                        color: Colors.blue,
                                        fontSize: 18,
                                      ),
                                      recognizer: new TapGestureRecognizer()
                                        ..onTap = () {
                                          _launchURL(
                                              "https://www.endeavour.com.au/");
                                        },
                                    ),
                                    new TextSpan(
                                      text:
                                          ' Document Destruction facilities. This project had two primary goals. One paper sorting simulation and the second a 360 video training course.',
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
