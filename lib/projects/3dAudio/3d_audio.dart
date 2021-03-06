import 'package:benjamin_portfolio/fade_in.dart';
import 'package:benjamin_portfolio/fade_in_two.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ThreeDAudio extends StatefulWidget {
  ThreeDAudio({Key key}) : super(key: key);

  @override
  _ThreeDAudioState createState() => _ThreeDAudioState();
}

class _ThreeDAudioState extends State<ThreeDAudio> {
  void _launchURL(String _url) async => await canLaunch(_url)
      ? await launch(_url)
      : throw 'Could not launch $_url';

  List<String> images = [
    "lib/projects/3dAudio/audio1.png",
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
              title: Text("3D Audio"),
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
                                    "lib/projects/3dAudio/audioname.png",
                                    fit: BoxFit.contain,
                                    alignment: Alignment.center,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            "2020 Audio Jam Submission",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 25,
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
                                      text:
                                          'Basic 3D audio scene using a version of ',
                                      style: new TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                      ),
                                    ),
                                    new TextSpan(
                                      text: "Craig Reynold's",
                                      style: new TextStyle(
                                        color: Colors.blue,
                                        fontSize: 18,
                                      ),
                                      recognizer: new TapGestureRecognizer()
                                        ..onTap = () {
                                          _launchURL(
                                              "https://www.red3d.com/cwr/boids/");
                                        },
                                    ),
                                    new TextSpan(
                                      text:
                                          ' Boids. Which is a computer model of coordinated animal motion such as bird flocks and fish schools. Then placing sound nodes on each of the boids.\n\nDesigned to test sound Spatialisation and Flocking Behaviours\n\nFor the best experience use 7.1 surround sound.\n\n2020 Audio Jam Submission.\n',
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
                          ElevatedButton.icon(
                            onPressed: () {
                              _launchURL(
                                  "https://bennyght.itch.io/nyghts-3d-audio");
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
                                Card(
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
