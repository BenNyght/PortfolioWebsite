import 'package:flutter/material.dart';
import 'package:benjamin_portfolio/home.dart';

class ProjectsBannerButton extends StatefulWidget {
  final double height;
  final TextTheme textTheme;

  const ProjectsBannerButton({
    required this.height,
    required this.textTheme,
    super.key,
  });

  @override
  State<ProjectsBannerButton> createState() => _ProjectsBannerButtonState();
}

class _ProjectsBannerButtonState extends State<ProjectsBannerButton>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _idlePulse;
  bool _isHovered = false;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);

    _idlePulse = Tween<double>(begin: 1.0, end: 1.005).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () => Navigator.pushNamed(context, '/projects'),
        child: AnimatedBuilder(
          animation: _idlePulse,
          builder: (context, child) {
            final scale = _isHovered ? 1.035 : _idlePulse.value;

            return AnimatedScale(
              scale: scale,
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeOut,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(14),
                    child: Image.asset(
                      'assets/general/projects-banner.png',
                      height: widget.height,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Projects',
                        style: widget.textTheme.headlineSmall?.copyWith(
                          color: AppColors.primary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 6),
                      const Icon(Icons.open_in_new,
                          color: AppColors.primary, size: 20),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
