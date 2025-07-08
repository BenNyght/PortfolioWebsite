import 'package:flutter/material.dart';
import 'package:benjamin_portfolio/app_constants.dart';
import 'package:benjamin_portfolio/utils/url_launcher_util.dart';
import 'package:benjamin_portfolio/widgets/project_base_page.dart';

class PortfolioPage extends StatelessWidget 
{
  static const routeName = '/projects/portfolio';

  static const _githubLink = 'https://github.com/BenNyght/PortfolioWebsite';

  static const _images = <String>[
    'lib/projects/portfolio/portfolio1.jpg',
    'lib/projects/portfolio/portfolio2.jpg',
    'lib/projects/portfolio/portfolio3.jpg',
    'lib/projects/portfolio/portfolio4.jpg',
    'lib/projects/portfolio/portfolio5.jpg',
    'lib/projects/portfolio/portfolio6.jpg',
    'lib/projects/portfolio/portfolio7.jpg',
    'lib/projects/portfolio/portfolio8.jpg',
    'lib/projects/portfolio/portfolio9.jpg',
  ];

  const PortfolioPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProjectBasePage(
      pageTitle: 'Portfolio',
      heading: 'Portfolio',
      description:
          'This website was developed in Flutter/Dart. Flutter is Google’s UI toolkit for building beautiful, natively compiled applications for mobile, web, desktop, and embedded devices from a single codebase.',
      actionButtons: [
        TextButton.icon(
          style: TextButton.styleFrom(
            backgroundColor: AppColors.primary,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 16,
            ),
            textStyle: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
            minimumSize: const Size(56, 56),
            alignment: Alignment.center,
          ),
          onPressed: () => launchUrl(_githubLink),
          icon: const Icon(
            Icons.web,
            size: 20,
          ),
          label: const Text('GitHub'),
        ),
      ],
      images: _images,
    );
  }
}
