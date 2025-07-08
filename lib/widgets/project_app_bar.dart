import 'package:flutter/material.dart';
import 'package:benjamin_portfolio/app_constants.dart';

/// A simple sliver app bar styled to match the home-page navbar:
/// same height, background color, padding, and text style.
class ProjectAppBar extends StatelessWidget 
{
  /// The text to display in the app bar.
  final String title;

  /// Creates a [ProjectAppBar] with the provided [title].
  const ProjectAppBar({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) 
  {
    return SliverAppBar(
      pinned: true,
      backgroundColor: AppColors.background,
      iconTheme: const IconThemeData(color: AppColors.primary), // Fixes back button color
      title: Text(
        title,
        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              color: AppColors.primary,
              fontWeight: FontWeight.bold,
            ),
      ),
    );
  }
}
