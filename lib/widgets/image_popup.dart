import 'package:flutter/material.dart';

class ImagePopup {
  void openImage(BuildContext context, String image) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: new Image.asset(
            image,
            fit: BoxFit.contain,
          ),
          actions: <Widget>[
            // ignore: deprecated_member_use
            new RaisedButton(
                child: new Text("CLOSE"),
                onPressed: () => Navigator.of(context).pop()),
          ],
        );
      },
    );
  }
}
