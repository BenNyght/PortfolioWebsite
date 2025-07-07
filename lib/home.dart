import 'package:benjamin_portfolio/app_constants.dart';
import 'package:benjamin_portfolio/section_about_me.dart';
import 'package:benjamin_portfolio/section_landing_info.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher_string.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final ScrollController _scrollController = ScrollController();
  final GlobalKey _aboutKey = GlobalKey();
  
  static const double _navRevealOffset = 400.0;
  static const double _navBarHeight = 56.0;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(() {})
      ..dispose();
    super.dispose();
  }

  void _scrollToAbout() {
    final ctx = _aboutKey.currentContext;
    if (ctx != null) {
      Scrollable.ensureVisible(
        ctx,
        duration: const Duration(milliseconds: 600),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    // compute how far we are, 0→1
    final offset = _scrollController.hasClients ? _scrollController.offset : 0.0;
    final t = (offset / _navRevealOffset).clamp(0.0, 1.0);
    // slide from -_navBarHeight → 0
    final slideY = -_navBarHeight * (1 - t);

    final media = MediaQuery.of(context);
    final screenWidth = media.size.width;
    final scale = screenWidth / 1200.0;
    final spacing = 16.0 * scale.clamp(0.8, 1.2);
    final iconSize = 20.0 * scale.clamp(0.8, 1.2);

    return Scaffold(
      backgroundColor: AppColors.background,
      body: Stack(
        children: [
          CustomScrollView(
            controller: _scrollController,
            slivers: [
              SliverToBoxAdapter(
                child: LandingInfo(
                  scale: scale,
                  spacing: spacing,
                  aboutKey: _aboutKey,
                ),
              ),
              SliverToBoxAdapter(
                key: _aboutKey,
                child: AboutMe(scale: scale, spacing: spacing),
              ),
            ],
          ),

          // your nav bar on top
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Opacity(
              opacity: t,
              child: Transform.translate(
                offset: Offset(0, slideY),
                child: Container(
                  height: _navBarHeight,
                  color: AppColors.navbar,
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // logo or title
                      Text(
                        AppStrings.name,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          _buildButton(
                            'Resume',
                            FaIcon(FontAwesomeIcons.filePdf, size: iconSize),
                            AppStrings.resumeUrl,
                          ),
                          _buildButton(
                            'LinkedIn',
                            FaIcon(FontAwesomeIcons.linkedin, size: iconSize),
                            AppStrings.linkedInUrl,
                          ),
                          _buildButton(
                            'About Me',
                            Icon(Icons.person, size: iconSize),
                            '',
                            onPressed: _scrollToAbout,
                          ),
                          _buildButton(
                            'Projects',
                            Icon(Icons.open_in_new, size: iconSize),
                            '',
                            onPressed: _scrollToAbout,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _launchUrl(String url) async {
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    }
  }

  Widget _buildButton(
    String label,
    Widget iconWidget,
    String url, {
    VoidCallback? onPressed,
  }) {
    return TextButton(
      style: TextButton.styleFrom(
        foregroundColor: Colors.grey,
        elevation: 2,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        minimumSize: const Size(150, 56),
        alignment: Alignment.center,
      ),
      onPressed: onPressed ?? () => _launchUrl(url),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          iconWidget,
          const SizedBox(width: 8),
          Text(label),
        ],
      ),
    );
  }
}
