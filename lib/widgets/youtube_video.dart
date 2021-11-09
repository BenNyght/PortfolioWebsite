import 'package:benjamin_portfolio/widgets/fade_in_two.dart';
import 'package:benjamin_portfolio/widgets/heading_2.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

// ignore: must_be_immutable
class YoutubeVideo extends StatefulWidget {
  String title;
  String youtubeVideoId;

  YoutubeVideo({@required this.title, @required this.youtubeVideoId});

  @override
  _YoutubeVideoState createState() => _YoutubeVideoState();
}

class _YoutubeVideoState extends State<YoutubeVideo> {
  @override
  Widget build(BuildContext context) {
    double _screenWidth = MediaQuery.of(context).size.width;

    YoutubePlayerController _youtubeController = YoutubePlayerController(
      initialVideoId: widget.youtubeVideoId,
      params: YoutubePlayerParams(
        playlist: [widget.youtubeVideoId], // Defining custom playlist
        startAt: Duration(seconds: 0),
        showControls: true,
        showFullscreenButton: true,
      ),
    );

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: _screenWidth <= 800 ? double.maxFinite : 800,
        child: Column(
          children: [
            HeadingTwo(widget.title),
            FadeInTwo(
              0.8,
              Card(
                elevation: 15,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: YoutubePlayerIFrame(
                    controller: _youtubeController,
                    aspectRatio: 16 / 9,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
