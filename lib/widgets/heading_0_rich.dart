import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HeadingZeroRich extends StatefulWidget {
  List<InlineSpan> textChildren;
  HeadingZeroRich(this.textChildren);

  @override
  _HeadingZeroRichState createState() => _HeadingZeroRichState();
}

class _HeadingZeroRichState extends State<HeadingZeroRich> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.maxFinite,
        alignment: Alignment.topLeft,
        child: RichText(
          softWrap: true,
          textAlign: TextAlign.left,
          text: new TextSpan(
            children: widget.textChildren,
          ),
        ),
      ),
    );
  }
}
