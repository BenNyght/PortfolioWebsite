import 'package:benjamin_portfolio/projects/3dAudio/3d_audio.dart';
import 'package:benjamin_portfolio/projects/altAR/alt_ar.dart';
import 'package:benjamin_portfolio/projects/apocalypseNow/apocalypse_now.dart';
import 'package:benjamin_portfolio/projects/archegnomeies/archegnomeies.dart';
import 'package:benjamin_portfolio/projects/battleDonut/battle_donut.dart';
import 'package:benjamin_portfolio/projects/birdsOnShow/birds_on_show.dart';
import 'package:benjamin_portfolio/projects/cityFight/city_fight.dart';
import 'package:benjamin_portfolio/projects/conjoin/conjoin.dart';
import 'package:benjamin_portfolio/projects/dndMapViewer/easy_tabletop.dart';
import 'package:benjamin_portfolio/projects/flick/flick.dart';
import 'package:benjamin_portfolio/projects/gympieSupport/gympie_support.dart';
import 'package:benjamin_portfolio/projects/papersimulation/paper_simuation.dart';
import 'package:benjamin_portfolio/projects/projectManager/project_manager.dart';
import 'package:benjamin_portfolio/projects/runPharaohRun/run_pharaoh_run.dart';
import 'package:benjamin_portfolio/projects/timeJump/time_jump.dart';
import 'package:benjamin_portfolio/projects/vrTreadmill/vr_treadmill.dart';
import 'package:benjamin_portfolio/work_in_progress.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

List<ProjectsItem> projectsList() {
  return [
    ProjectsItem(
      "Alt-AR",
      DateTime(2021, 1, 28),
      image: "lib/projects/altAR/altAR.jpg",
      sort: ProjectsSort.professional,
      navigation: AltAR(),
    ),
    ProjectsItem(
      "VR Movement Tracking",
      DateTime(2020, 2, 29),
      image: "lib/projects/vrTreadmill/Screenshot_5.png",
      sort: ProjectsSort.professional,
      navigation: VRTreadmill(),
    ),
    ProjectsItem(
      "Apocalypse Now? (48hr Sunjam 2019)",
      DateTime(2019, 7, 12),
      dateStarted: DateTime(2019, 7, 15),
      image: "lib/projects/apocalypseNow/apocalypseNow.jpg",
      sort: ProjectsSort.gamejam,
      navigation: ApocalypseNow(),
    ),
    ProjectsItem(
      "Time Jump (48hr Sunjam 2018)",
      DateTime(2018, 7, 12),
      dateStarted: DateTime(2018, 7, 15),
      image: "lib/projects/timeJump/timeJump.png",
      sort: ProjectsSort.gamejam,
      navigation: TimeJump(),
    ),
    ProjectsItem(
      "Flick (48hr Global Game Jam 2019)",
      DateTime(2019, 1, 31),
      dateStarted: DateTime(2019, 1, 27),
      image: "lib/projects/flick/flick.jpg",
      sort: ProjectsSort.gamejam,
      navigation: Flick(),
    ),
    ProjectsItem(
      "Run Pharaoh Run!",
      DateTime(2020, 1, 31),
      dateStarted: DateTime(2020, 1, 27),
      image: "lib/projects/runPharaohRun/runPharaohRun.jpg",
      sort: ProjectsSort.gamejam,
      navigation: RunPharaohRun(),
    ),
    ProjectsItem(
      "Nyght's 3D Audio",
      DateTime(2020, 8, 10),
      dateStarted: DateTime(2020, 8, 16),
      image: "lib/projects/3dAudio/audiologo.png",
      sort: ProjectsSort.gamejam,
      navigation: ThreeDAudio(),
    ),
    ProjectsItem(
      "Easy Tabletop Tools",
      DateTime(2020, 3, 1),
      image: "lib/projects/dndMapViewer/d&dViewerLogo.png",
      sort: ProjectsSort.personal,
      navigation: EasyTabletop(),
    ),
    ProjectsItem(
      "CityFight (Digital Re-imagining)",
      DateTime(2019, 11, 13),
      image: "lib/projects/cityFight/cityFightLogo.png",
      sort: ProjectsSort.professional,
      navigation: CityFight(),
    ),
    ProjectsItem(
      "BirdsOnShow AR App",
      DateTime(2019, 9, 16),
      dateStarted: DateTime(2019, 8, 16),
      image: "lib/projects/birdsOnShow/birds.jpg",
      sort: ProjectsSort.professional,
      navigation: BirdsOnShow(),
    ),
    ProjectsItem(
      "Battle Donut",
      DateTime(2019, 10, 20),
      dateStarted: DateTime(2019, 10, 1),
      image: "lib/projects/battleDonut/battleDonut.png",
      sort: ProjectsSort.university,
      navigation: BattleDonut(),
    ),
    ProjectsItem(
      "Arch E-Gnome-ies",
      DateTime(2019, 4, 12),
      dateStarted: DateTime(2019, 4, 1),
      image: "lib/projects/archegnomeies/archegnomeies.png",
      sort: ProjectsSort.university,
      navigation: Archegnomeies(),
    ),
    ProjectsItem(
      "Conjoin",
      DateTime(2020, 10, 18),
      image: "lib/projects/conjoin/conjoin.jpg",
      sort: ProjectsSort.personal,
      navigation: Conjoin(),
    ),
    ProjectsItem(
      "Project Manager",
      DateTime(2020, 12, 23),
      image: "lib/projects/projectManager/cidselDatabase.jpg",
      sort: ProjectsSort.professional,
      navigation: ProjectManager(),
    ),
    ProjectsItem(
      "Gympie Support",
      DateTime(2020, 12, 18),
      image: "lib/projects/gympieSupport/gympieSupport.jpg",
      sort: ProjectsSort.professional,
      navigation: GympieSupport(),
    ),
    ProjectsItem(
      "Paper Sorting Simulation",
      DateTime(2021, 7, 15),
      image: "lib/projects/papersimulation/2.jpg",
      sort: ProjectsSort.professional,
      navigation: PaperSimulation(),
    ),
  ];
}

Icon projectsItemIcon(ProjectsSort sortType) {
  switch (sortType) {
    case ProjectsSort.gamejam:
      return Icon(Icons.speed);
    case ProjectsSort.university:
      return Icon(Icons.school);
    case ProjectsSort.professional:
      return Icon(Icons.work);
    case ProjectsSort.personal:
      return Icon(Icons.person);
    default:
      return Icon(Icons.star);
  }
}

enum ProjectsSort {
  professional,
  personal,
  university,
  gamejam,
}

class ProjectsItem extends StatelessWidget {
  final String title;
  final DateTime dateCompleted;
  final DateTime dateStarted;
  final String image;
  final ProjectsSort sort;
  final Widget navigation;
  ProjectsItem(
    this.title,
    this.dateCompleted, {
    this.dateStarted,
    this.image,
    this.sort,
    this.navigation,
  });

  var dateFormat = DateFormat("dd-MM-yyyy");

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (navigation != null) {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => navigation,
              ));
        }
      },
      child: Card(
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
                  ),
                ),
              ),
            ),
            ListTile(
              contentPadding: const EdgeInsets.all(10),
              leading: projectsItemIcon(sort),
              title: Text(
                title,
                overflow: TextOverflow.fade,
              ),
              // subtitle: Text(
              //   dateFormat.format(dateCompleted),
              //   overflow: TextOverflow.fade,
              // ),
            ),
          ],
        ),
      ),
    );
  }
}
