import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HeadingZero extends StatefulWidget {
  String text;
  HeadingZero(this.text);

  @override
  _HeadingZeroState createState() => _HeadingZeroState();
}

class _HeadingZeroState extends State<HeadingZero> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.maxFinite,
        alignment: Alignment.topLeft,
        child: RichText(
          softWrap: true,
          textAlign: TextAlign.justify,
          text: new TextSpan(
            children: [
              new TextSpan(
                text: widget.text,
                style: new TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
