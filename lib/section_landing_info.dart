import 'package:benjamin_portfolio/app_constants.dart';
import 'package:benjamin_portfolio/projects_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher_string.dart';

class LandingInfo extends StatelessWidget {
  const LandingInfo({
    Key? key,
    required this.scale,
    required this.spacing,
    required this.aboutKey,
    this.maxContentWidth = 1000,
  }) : super(key: key);

  final GlobalKey aboutKey;
  final double scale;
  final double spacing;
  final double maxContentWidth;

  void _scrollToAbout() {
    final context = aboutKey.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 600),
        curve: Curves.easeInOut,
      );
    }
  }

  Future<void> _launchUrl(String url) async {
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    }
  }

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context);

    final avatarRadius = 72.0 * scale.clamp(0.8, 1.4);
    final iconSize = 20.0 * scale.clamp(0.8, 1.2);

    final textTheme = Theme.of(context).textTheme;

    return SizedBox(
      height: media.size.height,
      width: double.infinity,
      child: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: maxContentWidth),
          child: Padding(
            padding: EdgeInsets.all(spacing),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.4),
                        blurRadius: 12,
                        offset: const Offset(0, 6),
                      ),
                    ],
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      'assets/general/profile-picture.png',
                      width: avatarRadius * 2,
                      height: avatarRadius * 2,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: spacing),
                SelectableText(
                  AppStrings.name,
                  style: textTheme.headlineMedium?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 32 * scale.clamp(1.0, 1.4),
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 4),
                SelectableText(
                  AppStrings.title,
                  style: textTheme.titleMedium?.copyWith(
                    color: Colors.white70,
                    fontSize: 20 * scale.clamp(1.0, 1.2),
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: spacing),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.location_on,
                        color: Colors.white60,
                        size: 18 * scale.clamp(1.0, 1.4)),
                    const SizedBox(width: 4),
                    SelectableText(
                      AppStrings.location,
                      style: textTheme.bodyMedium?.copyWith(
                        color: Colors.white60,
                        fontSize: 16 * scale.clamp(1.1, 1.4),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                SizedBox(height: spacing / 2),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.email_outlined,
                        color: Colors.white60,
                        size: 18 * scale.clamp(1.0, 1.4)),
                    const SizedBox(width: 4),
                    SelectableText(
                      AppStrings.email,
                      style: textTheme.bodyMedium?.copyWith(
                        color: Colors.white60,
                        fontSize: 16 * scale.clamp(1.1, 1.4),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                SizedBox(height: spacing),
                Wrap(
                  alignment: WrapAlignment.center,
                  spacing: spacing,
                  runSpacing: spacing,
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
                  ],
                ),
                SizedBox(height: spacing * 4),
                ProjectsBannerButton(height: iconSize * 6, textTheme: textTheme),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildButton(
  String label,
  Widget iconWidget,
  String url, {
  VoidCallback? onPressed,
  }) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.black,
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