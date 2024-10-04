import 'package:flutter/material.dart';

class ProjectContent extends StatefulWidget {
  final List<Widget> children;

  ProjectContent({required this.children});

  @override
  _ProjectContentState createState() => _ProjectContentState();
}

class _ProjectContentState extends State<ProjectContent> {
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

    return SliverList(
      delegate: SliverChildListDelegate(
        [
          FractionallySizedBox(
            widthFactor: widthFactor,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: widget.children,
              ),
            ),
          )
        ],
      ),
    );
  }
}
