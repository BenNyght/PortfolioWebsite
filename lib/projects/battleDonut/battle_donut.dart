import 'package:benjamin_portfolio/fade_in.dart';
import 'package:benjamin_portfolio/fade_in_two.dart';
import 'package:benjamin_portfolio/image_popup.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BattleDonut extends StatefulWidget {
  BattleDonut({Key key}) : super(key: key);

  @override
  _BattleDonutState createState() => _BattleDonutState();
}

class _BattleDonutState extends State<BattleDonut> {
  void _launchURL(String _url) async => await canLaunch(_url)
      ? await launch(_url)
      : throw 'Could not launch $_url';

  List<String> images = [
    "lib/projects/battleDonut/bd1.png",
    "lib/projects/battleDonut/bd2.png",
    "lib/projects/battleDonut/bd3.png",
    "lib/projects/battleDonut/bd4.png",
    "lib/projects/battleDonut/bd5.png",
    "lib/projects/battleDonut/bd6.png",
    "lib/projects/battleDonut/bd7.png",
    "lib/projects/battleDonut/bd8.png",
    "lib/projects/battleDonut/bd9.png",
    "lib/projects/battleDonut/bd10.gif",
    "lib/projects/battleDonut/bd11.gif",
    "lib/projects/battleDonut/bd12.png",
    "lib/projects/battleDonut/bd13.png",
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
              title: Text("Battle Donut"),
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
                                    "lib/projects/battleDonut/title.png",
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
                                      text:
                                          "This small game was originally designed to test and evaluate a custom built pathfinding, particle, and attacking script.\n\n",
                                      style: new TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                      ),
                                    ),
                                    new TextSpan(
                                      text:
                                          '"Game Idea *eats donut*... What would it be like to be a meatball on a giant donut where you fight sprinkles… sure that’s a good game idea…"\n\nSurvive as long as possible, shooting sprinkles and dodging bullets! Make sure to get pickups as they might give you the needed boost to survive longer.\n\nControls:\nMove = W,A,S,D\nShoot = Left Mouse\nAim = Aim by moving the mouse to where you would like to shoot.\nPause = Esc Key',
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
                                  "https://bennyght.itch.io/battledonut");
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
