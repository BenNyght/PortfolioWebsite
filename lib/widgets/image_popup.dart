import 'package:flutter/material.dart';

class ImagePopup {
  void openImage(BuildContext context, String image) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          elevation: 0,
          backgroundColor: Colors.transparent,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(0.0))),
          content: Container(
            child: new Image.asset(
              image,
              fit: BoxFit.contain,
            ),
          ),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 16, 0),
              // ignore: deprecated_member_use
              child: new ElevatedButton(
                  child: new Text(
                    "CLOSE",
                    style: new TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                  onPressed: () => Navigator.of(context).pop()),
            ),
          ],
        );
      },
    );
  }
}
