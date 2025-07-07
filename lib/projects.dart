import 'package:benjamin_portfolio/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:benjamin_portfolio/projects_list.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context);
    final screenWidth = media.size.width;
    final scale = screenWidth / 1200.0;
    final spacing = 16.0 * scale.clamp(0.8, 1.2);

    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              pinned: true,
              backgroundColor: AppColors.background,
              iconTheme: const IconThemeData(color: AppColors.primary), // Fixes back button color
              title: Text(
                'Projects',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: AppColors.primary,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.all(spacing),
                child: const ProjectsList(), // Let this be fully responsive
              ),
            ),
          ],
        ),
      ),
    );
  }
}
