import 'package:flutter/material.dart';

class ProjectAppBar extends StatefulWidget {
  final String title;

  ProjectAppBar({required this.title});

  @override
  _ProjectAppBarState createState() => _ProjectAppBarState();
}

class _ProjectAppBarState extends State<ProjectAppBar> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: Text(widget.title),
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
    );
  }
}
