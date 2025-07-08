import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:benjamin_portfolio/app_constants.dart';
import 'package:benjamin_portfolio/utils/url_launcher_util.dart';
import 'package:benjamin_portfolio/widgets/project_base_page.dart';
import 'package:benjamin_portfolio/widgets/website_button.dart';
import 'package:benjamin_portfolio/widgets/download_button.dart';

class CityFightPage extends StatelessWidget 
{
  static const routeName = '/projects/city-fight';

  static const _drCharlesLink = 'https://www.linkedin.com/in/charles-knight-36707367/';

  static const _urbanChallengeLink = 'https://researchcentre.army.gov.au/library/seminar-series/urban-challenge';

  static const _downloadLink = 'https://bennyght.itch.io/cityfight';

  static const _images = <String>[
    'lib/projects/cityFight/pic1.png',
    'lib/projects/cityFight/pic2.png',
    'lib/projects/cityFight/pic3.png',
    'lib/projects/cityFight/pic4.png',
    'lib/projects/cityFight/pic5.png',
  ];

  /// Creates a [CityFightPage].
  const CityFightPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bodyStyle = Theme.of(context)
        .textTheme
        .bodyMedium
        ?.copyWith(color: AppColors.bodyText, fontSize: 18);

    return ProjectBasePage(
      pageTitle: 'Cityfight',
      heading: 'Cityfight',
      descriptionSpan: TextSpan(
        style: bodyStyle,
        children: <InlineSpan>[
          const TextSpan(text: 'Developed for '),
          TextSpan(
            text: 'Dr Charles Knight',
            style: bodyStyle?.copyWith(color: AppColors.link),
            recognizer: TapGestureRecognizer()
              ..onTap = () => launchUrl(_drCharlesLink),
          ),
          const TextSpan(
            text:
                ' to prototype the idea of using games to teach urban combat strategies to the Australian Army. In an effort to overcome the "',
          ),
          TextSpan(
            text: 'Urban Challenge',
            style: bodyStyle?.copyWith(color: AppColors.link),
            recognizer: TapGestureRecognizer()
              ..onTap = () => launchUrl(_urbanChallengeLink),
          ),
          const TextSpan(text: '"\n\n'),
          const TextSpan(
            text: 'The Urban Challenge\n',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const TextSpan(
            text:
                'This seminar explores: A 12 Vulnerabilities Construct as a way to comprehend the urban challenge; Australian Army ‘fitness for purpose’ against a range of historical urban cases; the puzzle of missing urban capability as an opportunity; and eight exploratory ‘capability constructs’.\n\n',
          ),
          const TextSpan(
            text: 'The Game\n',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const TextSpan(
            text:
                'The game is based on a single scenario from the board game—you compete directly against another player via a computer ‘hotseat’. '
                'This means that after you have your turn, you click end turn and move away so player two may sit down and plan out their round (no peeking!) '
                'Until someone either reaches the objective or vanquishes the opposing player.\n',
          ),
        ],
      ),
      actionButtons: const <Widget>[
        WebsiteButton(
          link: _urbanChallengeLink,
          label: 'The Urban Challenge',
        ),
        DownloadButton(downloadLink: _downloadLink),
      ],
      images: _images,
    );
  }
}
