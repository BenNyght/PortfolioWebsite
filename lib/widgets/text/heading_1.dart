import 'package:flutter/material.dart';

class HeadingOne extends StatefulWidget {
  final String text;
  HeadingOne(this.text);

  @override
  _HeadingOneState createState() => _HeadingOneState();
}

class _HeadingOneState extends State<HeadingOne> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 8, 8, 23),
      child: Container(
        width: double.maxFinite,
        alignment: Alignment.center,
        child: RichText(
          softWrap: true,
          textAlign: TextAlign.center,
          text: new TextSpan(
            children: [
              new TextSpan(
                text: widget.text,
                style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 40,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
