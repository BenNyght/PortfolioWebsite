import 'package:benjamin_portfolio/app_constants.dart';
import 'package:benjamin_portfolio/section_about_me.dart';
import 'package:benjamin_portfolio/section_landing_info.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final ScrollController _scrollController = ScrollController();
  final GlobalKey _aboutKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context);
    final screenWidth = media.size.width;
    final scale = screenWidth / 1200.0;

    final spacing = 16.0 * scale.clamp(0.8, 1.2);

    return Scaffold(
      backgroundColor: AppColors.background,
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverToBoxAdapter(
            child: LandingInfo(scale: scale, spacing: spacing, aboutKey: _aboutKey)
          ),
          SliverToBoxAdapter(
            key: _aboutKey,
            child: AboutMe(scale: scale,spacing: spacing),
          ),
        ],
      ),
    );
  }
}