import 'package:benjamin_portfolio/widgets/fade_in_two.dart';
import 'package:benjamin_portfolio/projects.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class HomeView extends StatefulWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int timelineIndex = 0;

  void _launchURL(String _url) async => await canLaunchUrlString(_url)
      ? await launchUrlString(_url)
      : throw 'Could not launch $_url';

  @override
  Widget build(BuildContext context) {
    double _screenWidth = MediaQuery.of(context).size.width;
    print(_screenWidth);
    double widthFactor = 0.25;
    if (_screenWidth > 2500) {
      widthFactor = 0.25;
    } else if (_screenWidth > 1800) {
      widthFactor = 0.25;
    } else if (_screenWidth > 1000) {
      widthFactor = 0.35;
    } else if (_screenWidth > 700) {
      widthFactor = 0.7;
    } else {
      widthFactor = 0.85;
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
              backgroundColor: Color(0xFF232323),
              expandedHeight: MediaQuery.of(context).size.height,
              snap: false,
              pinned: false,
              floating: false,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: false,
                collapseMode: CollapseMode.parallax,
                background: Stack(
                  fit: StackFit.expand,
                  children: [
                    FadeInTwo(
                      0.8,
                      Image.asset(
                        "assets/general/background.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Center(
                      child: FractionallySizedBox(
                        widthFactor: widthFactor,
                        child: FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Benjamin Finlay",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "Game Developer / Software Engineer",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  ElevatedButton.icon(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Projects(),
                                          ));
                                    },
                                    icon: Icon(Icons.computer),
                                    label: Text("Projects"),
                                  ),
                                  Container(
                                    width: 7,
                                  ),
                                  ElevatedButton.icon(
                                    onPressed: () {
                                      _launchURL(
                                          "https://drive.google.com/file/d/15aXZSbEgxLWnYhSjiCQtATbNkoBf5Yjn/view?usp=sharing");
                                    },
                                    icon: Icon(Icons.picture_as_pdf),
                                    label: Text("Resume"),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              ElevatedButton.icon(
                                onPressed: () {
                                  _launchURL(
                                      "https://www.linkedin.com/in/benjamin-finlay/");
                                },
                                icon: Icon(Icons.link),
                                label: Text("LinkedIn"),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
