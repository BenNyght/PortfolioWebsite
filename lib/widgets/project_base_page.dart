// lib/widgets/project_base_page.dart

import 'package:flutter/material.dart';
import 'package:benjamin_portfolio/app_constants.dart';
import 'package:benjamin_portfolio/widgets/project_app_bar.dart';
import 'package:benjamin_portfolio/widgets/project_content.dart';
import 'package:benjamin_portfolio/widgets/youtube_video.dart';
import 'package:benjamin_portfolio/widgets/image_library.dart';

/// Simple data holder for embedding a YouTube video.
class YoutubeVideoData {
  /// The display title above the video.
  final String title;

  /// The YouTube video ID.
  final String id;

  /// Creates a [YoutubeVideoData].
  const YoutubeVideoData({
    required this.title,
    required this.id,
  });
}

/// A reusable page layout for showcasing a project.
///
/// Provides:
///  1. A sliver app bar with [pageTitle].
///  2. A heading and either plain or rich description.
///  3. Optional action buttons (e.g. store links).
///  4. A list of embedded YouTube videos.
///  5. An optional gallery of images.
///
/// You may supply either [description] (plain text) or [descriptionSpan]
/// (rich text with hyperlinks), but you must provide at least one.
class ProjectBasePage extends StatelessWidget {
  /// Text shown in the app bar.
  final String pageTitle;

  /// Main heading shown below the app bar.
  final String heading;

  /// Plain-text description. Ignored if [descriptionSpan] is non-null.
  final String description;

  /// Rich description with hyperlinks or styled spans.
  final TextSpan? descriptionSpan;

  /// Any buttons you want centered under the description.
  final List<Widget> actionButtons;

  /// YouTube videos to embed.
  final List<YoutubeVideoData> videos;

  /// Image asset paths for the gallery.
  final List<String> images;

  /// Creates a [ProjectBasePage].
  ///
  /// Supply either [description] or [descriptionSpan].
  const ProjectBasePage({
    Key? key,
    required this.pageTitle,
    required this.heading,
    this.description = '',
    this.descriptionSpan,
    this.actionButtons = const <Widget>[],
    this.videos = const <YoutubeVideoData>[],
    this.images = const <String>[],
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    final bodyColor = AppColors.bodyText;

    final children = <Widget>[
      // Heading
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: SelectableText(
          heading,
          style: textStyle.titleLarge?.copyWith(color: bodyColor),
          textAlign: TextAlign.justify,
        ),
      ),

      // Description: rich if provided, else plain.
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: descriptionSpan != null
            ? RichText(
                textAlign: TextAlign.justify,
                text: TextSpan(
                  style:
                      textStyle.bodyMedium?.copyWith(color: bodyColor, fontSize: 18),
                  children: [descriptionSpan!],
                ),
              )
            : SelectableText(
                description,
                style: textStyle.bodyMedium?.copyWith(color: bodyColor),
                textAlign: TextAlign.justify,
              ),
      ),
    ];

    if (actionButtons.isNotEmpty) {
      children.add(const SizedBox(height: 24));
      children.add(
        Center(
          child: Wrap(
            spacing: 16,
            children: actionButtons,
          ),
        ),
      );
    }

    if (videos.isNotEmpty) {
      children.add(const SizedBox(height: 24));
      for (final video in videos) {
        children.add(
          YoutubeVideo(
            title: video.title,
            youtubeVideoId: video.id,
          ),
        );
      }
    }

    if (images.isNotEmpty) {
      children.add(const SizedBox(height: 24));
      children.add(ImageLibrary(images: images));
    }

    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        top: true,
        bottom: true,
        left: true,
        right: true,
        child: CustomScrollView(
          slivers: <Widget>[
            ProjectAppBar(title: pageTitle),
            ProjectContent(children: children),
          ],
        ),
      ),
    );
  }
}
