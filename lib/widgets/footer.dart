import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({required Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      height: 75,
      color: Color(0xFF232323),
      child:
          Text("2021 - Benjamin Finlay", style: TextStyle(color: Colors.white)),
    );
  }
}
