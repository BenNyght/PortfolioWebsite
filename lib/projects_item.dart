import 'package:benjamin_portfolio/projects/altAR/alt_ar.dart';
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
      "VR Movement Viewer",
      DateTime(2020, 2, 29),
      image: "lib/projects/vrMovementViewer/Screenshot_4.png",
      sort: ProjectsSort.professional,
      navigation: WorkInProgress(),
    ),
    ProjectsItem(
      "VR Treadmill",
      DateTime(2019, 4, 13),
      image: "lib/projects/vrTreadmill/Screenshot_5.png",
      sort: ProjectsSort.professional,
      navigation: WorkInProgress(),
    ),
    ProjectsItem(
      "Apocalypse Now? (48hr Sunjam 2019)",
      DateTime(2019, 7, 12),
      dateStarted: DateTime(2019, 7, 15),
      image: "lib/projects/apocalypseNow/apocalypseNow.jpg",
      sort: ProjectsSort.gamejam,
      navigation: WorkInProgress(),
    ),
    ProjectsItem(
      "Time Jump (48hr Sunjam 2018)",
      DateTime(2018, 7, 12),
      dateStarted: DateTime(2018, 7, 15),
      image: "lib/projects/timeJump/timeJump.png",
      sort: ProjectsSort.gamejam,
      navigation: WorkInProgress(),
    ),
    ProjectsItem(
      "Flick (48hr Global Game Jam 2019)",
      DateTime(2019, 1, 31),
      dateStarted: DateTime(2019, 1, 27),
      image: "lib/projects/flick/flick.jpg",
      sort: ProjectsSort.gamejam,
      navigation: WorkInProgress(),
    ),
    ProjectsItem(
      "Run Pharaoh Run!",
      DateTime(2020, 1, 31),
      dateStarted: DateTime(2020, 1, 27),
      image: "lib/projects/runPharaohRun/runPharaohRun.jpg",
      sort: ProjectsSort.gamejam,
      navigation: WorkInProgress(),
    ),
    ProjectsItem(
      "Nyght's 3D Audio",
      DateTime(2020, 8, 10),
      dateStarted: DateTime(2020, 8, 16),
      image: "lib/projects/3dAudio/audiologo.png",
      sort: ProjectsSort.gamejam,
      navigation: WorkInProgress(),
    ),
    ProjectsItem(
      "D&D Map Viewer 1.0",
      DateTime(2020, 3, 1),
      image: "lib/projects/dndMapViewer/d&dViewerLogo.png",
      sort: ProjectsSort.personal,
      navigation: WorkInProgress(),
    ),
    ProjectsItem(
      "CityFight (Digital Re-imagining)",
      DateTime(2019, 11, 13),
      image: "lib/projects/cityFight/cityFightLogo.png",
      sort: ProjectsSort.professional,
      navigation: WorkInProgress(),
    ),
    ProjectsItem(
      "Snail & Seek (48hr Sunjam 2019)",
      DateTime(2019, 7, 12),
      dateStarted: DateTime(2019, 7, 15),
      image: "lib/projects/snailAndSeek/snailAndSeek.png",
      sort: ProjectsSort.gamejam,
      navigation: WorkInProgress(),
    ),
    ProjectsItem(
      "BirdsOnShow AR App",
      DateTime(2019, 9, 16),
      dateStarted: DateTime(2019, 8, 16),
      image: "lib/projects/birdsOnShow/birds.jpg",
      sort: ProjectsSort.professional,
      navigation: WorkInProgress(),
    ),
    ProjectsItem(
      "Battle Donut",
      DateTime(2019, 10, 20),
      dateStarted: DateTime(2019, 10, 1),
      image: "lib/projects/battleDonut/battleDonut.png",
      sort: ProjectsSort.university,
      navigation: WorkInProgress(),
    ),
    ProjectsItem(
      "Arch E-Gnome-ies",
      DateTime(2019, 4, 12),
      dateStarted: DateTime(2019, 4, 1),
      image: "lib/projects/archegnomeies/archegnomeies.png",
      sort: ProjectsSort.university,
      navigation: WorkInProgress(),
    ),
    ProjectsItem(
      "Conjoin",
      DateTime(2020, 10, 18),
      image: "lib/projects/conjoin/conjoin.jpg",
      sort: ProjectsSort.personal,
      navigation: WorkInProgress(),
    ),
    ProjectsItem(
      "Project Manager",
      DateTime(2020, 12, 23),
      image: "lib/projects/projectManager/cidselDatabase.jpg",
      sort: ProjectsSort.professional,
      navigation: WorkInProgress(),
    ),
    ProjectsItem(
      "Gympie Support",
      DateTime(2020, 12, 18),
      image: "lib/projects/gympieSupport/gympieSupport.jpg",
      sort: ProjectsSort.professional,
      navigation: WorkInProgress(),
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
              subtitle: Text(
                dateFormat.format(dateCompleted),
                overflow: TextOverflow.fade,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
