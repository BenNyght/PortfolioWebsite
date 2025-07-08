import 'package:flutter/material.dart';

class HeadingZeroRich extends StatefulWidget {
  final List<InlineSpan> textChildren;
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
          textAlign: TextAlign.justify,
          text: new TextSpan(
            children: widget.textChildren,
          ),
        ),
      ),
    );
  }
}
