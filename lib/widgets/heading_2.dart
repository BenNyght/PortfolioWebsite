import 'package:flutter/material.dart';

class HeadingTwo extends StatefulWidget {
  final String text;
  HeadingTwo(this.text);

  @override
  _HeadingTwoState createState() => _HeadingTwoState();
}

class _HeadingTwoState extends State<HeadingTwo> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 23, 8, 8),
      child: Container(
        width: double.maxFinite,
        alignment: Alignment.centerLeft,
        child: RichText(
          softWrap: true,
          textAlign: TextAlign.left,
          text: new TextSpan(
            children: [
              new TextSpan(
                text: widget.text,
                style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 25,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
