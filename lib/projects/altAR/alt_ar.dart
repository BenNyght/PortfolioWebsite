import 'package:benjamin_portfolio/fade_in.dart';
import 'package:flutter/material.dart';

class AltAR extends StatefulWidget {
  AltAR({Key key}) : super(key: key);

  @override
  _AltARState createState() => _AltARState();
}

class _AltARState extends State<AltAR> {
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
                    Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.25,
                        child: FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Coming Soon",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    FadeIn(
                      4,
                      Image.asset(
                        "lib/projects/altAR/poster_colour_.png",
                        fit: BoxFit.cover,
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
