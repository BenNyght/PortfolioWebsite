import 'package:benjamin_portfolio/widgets/fade_in_two.dart';
import 'package:benjamin_portfolio/widgets/image_popup.dart';
import 'package:benjamin_portfolio/widgets/on_hover.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ImageLibrary extends StatefulWidget {
  List<String> images;
  ImageLibrary({@required this.images});

  @override
  _ImageLibraryState createState() => _ImageLibraryState();
}

class _ImageLibraryState extends State<ImageLibrary> {
  bool hoverOver = false;

  @override
  Widget build(BuildContext context) {
    double _screenWidth = MediaQuery.of(context).size.width;
    int _crossAxisCount = 4;
    if (_screenWidth > 2500) {
      _crossAxisCount = 3;
    } else if (_screenWidth > 1800) {
      _crossAxisCount = 3;
    } else if (_screenWidth > 1000) {
      _crossAxisCount = 3;
    } else if (_screenWidth > 700) {
      _crossAxisCount = 2;
    } else {
      _crossAxisCount = 1;
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: _crossAxisCount),
        itemBuilder: (_, index) => FadeInTwo(
          0.8,
          OnHover(builder: (isHovered) {
            return PhysicalModel(
              color: Colors.transparent,
              elevation: hoverOver ? 16 : 0,
              child: GestureDetector(
                onPanDown: (_) =>
                    {ImagePopup().openImage(context, widget.images[index])},
                child: Card(
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        color: Colors.white,
                        image: DecorationImage(
                          image: AssetImage(widget.images[index]),
                          fit: BoxFit.cover,
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          }),
        ),
        itemCount: widget.images.length,
      ),
    );
  }
}
