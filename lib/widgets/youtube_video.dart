import 'package:benjamin_portfolio/app_constants.dart';
import 'package:benjamin_portfolio/widgets/fade_in_two.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class YoutubeVideo extends StatefulWidget {
  final String title;
  final String youtubeVideoId;

  YoutubeVideo({required this.title, required this.youtubeVideoId});

  @override
  _YoutubeVideoState createState() => _YoutubeVideoState();
}

class _YoutubeVideoState extends State<YoutubeVideo> {
  late YoutubePlayerController _youtubeController;

  @override
  void initState() {
    super.initState();
    _youtubeController = YoutubePlayerController.fromVideoId(
      videoId: widget.youtubeVideoId,
      autoPlay: false,
      params: YoutubePlayerParams(
        showControls: true,
        showFullscreenButton: true,
      ),
    );
  }

  @override
  void dispose() {
    _youtubeController.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double _screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: _screenWidth <= 800 ? double.maxFinite : 800,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SelectableText(
                widget.title,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(fontSize: 18, color: AppColors.bodyText),
                textAlign: TextAlign.justify,
              ),
            ),
            FadeInTwo(
              delay: 0.8,
              child: Card(
                elevation: 15,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: YoutubePlayer(
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
