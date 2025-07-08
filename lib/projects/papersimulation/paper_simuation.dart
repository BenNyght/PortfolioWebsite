import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:benjamin_portfolio/app_constants.dart';
import 'package:benjamin_portfolio/utils/url_launcher_util.dart';
import 'package:benjamin_portfolio/widgets/project_base_page.dart';

class PaperSimulationPage extends StatelessWidget 
{
  static const routeName = '/projects/paper-simulation';

  static const _images = <String>[
    'lib/projects/papersimulation/1.jpg',
    'lib/projects/papersimulation/2.jpg',
    'lib/projects/papersimulation/3.jpg',
    'lib/projects/papersimulation/4.jpg',
    'lib/projects/papersimulation/EDVR.jpg',
    'lib/projects/papersimulation/Engage-Research-Logo-Large-Dark.png',
  ];

  const PaperSimulationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) 
  {
    final bodyStyle = Theme.of(context)
        .textTheme
        .bodyMedium
        ?.copyWith(color: AppColors.bodyText, fontSize: 18);

    return ProjectBasePage(
      pageTitle: 'Paper Sorting Simulation',
      heading: 'VR Paper Sorting Simulation',
      descriptionSpan: TextSpan(
        style: bodyStyle,
        children: <InlineSpan>[
          const TextSpan(text: 'Developed for the '),
          TextSpan(
            text: "Endeavour Foundation’s",
            style: bodyStyle?.copyWith(color: AppColors.link),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                launchUrl('https://www.endeavour.com.au/');
              },
          ),
          const TextSpan(text: ' Document Destruction facilities in collaboration with the '),
          TextSpan(
            text: 'Engage Research Lab',
            style: bodyStyle?.copyWith(color: AppColors.link),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                launchUrl('https://engageresearch.org/');
              },
          ),
          const TextSpan(
            text:
                '. This project had two primary goals—one paper sorting simulation and the second a 360° video training course. '
                'The paper sorting simulation is a training tool to teach how and what to sort from the facilities’ conveyor belt shredder. '
                'The 360° video training course is a multiple-choice training tool to teach the safety processes of each document destruction facility.',
          ),
        ],
      ),
      images: _images,
    );
  }
}
