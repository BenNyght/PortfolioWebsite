import 'package:benjamin_portfolio/fade_in.dart';
import 'package:benjamin_portfolio/fade_in_two.dart';
import 'package:benjamin_portfolio/image_popup.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BirdsOnShow extends StatefulWidget {
  BirdsOnShow({Key key}) : super(key: key);

  @override
  _BirdsOnShowState createState() => _BirdsOnShowState();
}

class _BirdsOnShowState extends State<BirdsOnShow> {
  void _launchURL(String _url) async => await canLaunch(_url)
      ? await launch(_url)
      : throw 'Could not launch $_url';

  List<String> images = [
    "lib/projects/birdsOnShow/birds.jpg",
    "lib/projects/birdsOnShow/bird2.jpg",
    "lib/projects/birdsOnShow/bird3.jpg",
    "lib/projects/birdsOnShow/bird4.jpg",
    "lib/projects/birdsOnShow/marycairnlogo.png",
    "lib/projects/birdsOnShow/birdsOnShow.jpg",
  ];

  List<String> arImages = [
    "lib/projects/birdsOnShow/target1_scaled.jpg",
    "lib/projects/birdsOnShow/target2_scaled.jpg",
    "lib/projects/birdsOnShow/target3_scaled.jpg",
    "lib/projects/birdsOnShow/target4_scaled.jpg",
    "lib/projects/birdsOnShow/target5_scaled.jpg",
  ];

  bool displayTargets = true;

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
              title: Text("Birds On Show"),
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
                            "Birds On Show",
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
                                      text: 'Developed for ',
                                      style: new TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                      ),
                                    ),
                                    new TextSpan(
                                      text: "Mary Cairncross Scenic Reserve's",
                                      style: new TextStyle(
                                        color: Colors.blue,
                                        fontSize: 18,
                                      ),
                                      recognizer: new TapGestureRecognizer()
                                        ..onTap = () {
                                          _launchURL(
                                              "https://mary-cairncross.sunshinecoast.qld.gov.au/");
                                        },
                                    ),
                                    new TextSpan(
                                      text:
                                          ' Rainforest Discovery Centre, as one of their multi-sensory learning experiences.\n\nInside of the Discovery Centre there is a special wall, which comes alive in Virtual Reality. Install this app, and point your phone at the special symbols to bring the wall to life.',
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
                          GestureDetector(
                            onTap: () => {
                              _launchURL(
                                  "https://apps.apple.com/au/app/mary-cairncross-birds-on-show/id1477947473"),
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 251,
                                child: FadeInTwo(
                                  0.8,
                                  Image.asset(
                                    "assets/general/downloadonappstore.png",
                                    fit: BoxFit.contain,
                                  ),
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
                          ExpansionTile(
                            title: Text(
                              'AR Targets',
                            ),
                            children: <Widget>[
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
                                            .openImage(context, arImages[index])
                                      },
                                      child: Card(
                                        elevation: 8,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              image: DecorationImage(
                                                image:
                                                    AssetImage(arImages[index]),
                                                fit: BoxFit.cover,
                                                alignment: Alignment.center,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  itemCount: arImages.length,
                                ),
                              ),
                            ],
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
