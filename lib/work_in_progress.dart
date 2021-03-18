import 'package:flutter/material.dart';

class WorkInProgress extends StatefulWidget {
  WorkInProgress({Key key}) : super(key: key);

  @override
  _WorkInProgressState createState() => _WorkInProgressState();
}

class _WorkInProgressState extends State<WorkInProgress> {
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
                                "Website In Progress\nInformation Coming Soon",
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
