import 'package:benjamin_portfolio/fade_in.dart';
import 'package:benjamin_portfolio/projects_list.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  HomeView({Key key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int timelineIndex = 0;

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
              // leading: Image.asset(
              //   'assets/general/logowhite.png',
              //   fit: BoxFit.contain,
              // ),
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
                    FadeIn(
                      4,
                      Image.asset(
                        "assets/general/background.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
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
                                "GAME DESIGNER\n& PROGRAMMER",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  FittedBox(
                                    fit: BoxFit.fitWidth,
                                    child: Container(
                                      width: 88,
                                      height: 36,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFff3366),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0xFF232323),
                                            offset: Offset(0.0, 0.3), //(x,y)
                                            blurRadius: 3.0,
                                          ),
                                        ],
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(18.0)),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "Projects",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 15,
                                  ),
                                  FittedBox(
                                    fit: BoxFit.fitWidth,
                                    child: Container(
                                      width: 88,
                                      height: 36,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFff3366),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0xFF232323),
                                            offset: Offset(0.0, 0.3), //(x,y)
                                            blurRadius: 3.0,
                                          ),
                                        ],
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(18.0)),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "Resume",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  FractionallySizedBox(
                    widthFactor: 0.8,
                    child: Column(
                      children: [
                        ProjectsList(),
                        Container(
                          height: 100,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
