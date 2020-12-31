import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

List<ProjectsItem> projectsList() {
  return [
    ProjectsItem(
      "Portfolio Website",
      DateTime.now(),
      image: "assets/general/background.jpg",
      sort: ProjectsSort.university,
    ),
    ProjectsItem(
      "VR Movement Viewer",
      DateTime(2019, 10, 10),
      dateStarted: DateTime(2019, 6, 10),
      image: "assets/projects/vrOmniTread.png",
      sort: ProjectsSort.professional,
    ),
    ProjectsItem(
      "VR Treadmill",
      DateTime(2019, 4, 13),
      dateStarted: DateTime(2020, 2, 13),
      image: "assets/projects/vrOmniTread.png",
      sort: ProjectsSort.professional,
    ),
    ProjectsItem(
      "Apocalypse Now? (48hr Sunjam 2019)",
      DateTime(2019, 7, 12),
      dateStarted: DateTime(2019, 7, 15),
      image: "assets/projects/apocalypseNow.jpg",
      sort: ProjectsSort.gamejam,
    ),
    ProjectsItem(
      "Time Jump (48hr Sunjam 2018)",
      DateTime(2018, 7, 12),
      dateStarted: DateTime(2018, 7, 15),
      image: "assets/projects/timeJump.png",
      sort: ProjectsSort.gamejam,
    ),
    ProjectsItem(
      "Flick (48hr Global Game Jam 2019)",
      DateTime(2019, 1, 31),
      dateStarted: DateTime(2019, 1, 27),
      image: "assets/projects/flick.jpg",
      sort: ProjectsSort.gamejam,
    ),
    ProjectsItem(
      "Run Pharaoh Run!",
      DateTime(2020, 1, 31),
      dateStarted: DateTime(2020, 1, 27),
      image: "assets/projects/runPharaohRun.jpg",
      sort: ProjectsSort.gamejam,
    ),
    ProjectsItem(
      "Nyght's 3D Audio",
      DateTime(2020, 8, 10),
      dateStarted: DateTime(2020, 8, 16),
      image: "assets/projects/audiologo.png",
      sort: ProjectsSort.gamejam,
    ),
    ProjectsItem(
      "D&D Map Viewer 1.0",
      DateTime(2020, 3, 1),
      image: "assets/projects/d&dViewerLogo.png",
      sort: ProjectsSort.personal,
    ),
    ProjectsItem(
      "CityFight (Digital Re-imagining)",
      DateTime(2019, 11, 13),
      image: "assets/projects/cityFightLogo.png",
      sort: ProjectsSort.university,
    ),
    ProjectsItem(
      "Snail & Seek (48hr Sunjam 2019)",
      DateTime(2019, 7, 12),
      dateStarted: DateTime(2019, 7, 15),
      image: "assets/projects/snailAndSeek.png",
      sort: ProjectsSort.gamejam,
    ),
    ProjectsItem(
      "BirdsOnShow AR App",
      DateTime(2019, 9, 16),
      dateStarted: DateTime(2019, 8, 16),
      image: "assets/projects/birdsOnShow.jpg",
      sort: ProjectsSort.professional,
    ),
    ProjectsItem(
      "Battle Donut",
      DateTime(2019, 10, 20),
      dateStarted: DateTime(2019, 10, 1),
      image: "assets/projects/battleDonut.png",
      sort: ProjectsSort.university,
    ),
    ProjectsItem(
      "Arch E-Gnome-ies",
      DateTime(2019, 4, 12),
      dateStarted: DateTime(2019, 4, 1),
      image: "assets/projects/archegnomeies.png",
      sort: ProjectsSort.university,
    ),
    ProjectsItem(
      "Language Bot",
      DateTime(2020, 2, 3),
      image: "assets/projects/languageBot.png",
      sort: ProjectsSort.personal,
    ),
    ProjectsItem(
      "Conjoin",
      DateTime(2020, 10, 18),
      image: "assets/projects/conjoin.jpg",
      sort: ProjectsSort.personal,
    ),
    ProjectsItem(
      "Project Manager",
      DateTime(2020, 12, 23),
      image: "assets/projects/cidselDatabase.jpg",
      sort: ProjectsSort.professional,
    ),
    ProjectsItem(
      "Gympie Support",
      DateTime(2020, 12, 18),
      image: "assets/projects/gympieSupport.jpg",
      sort: ProjectsSort.professional,
    ),
    ProjectsItem(
      "Game Art Virtual Environment",
      DateTime(2018, 6, 1),
      image: "assets/projects/artRender.png",
      sort: ProjectsSort.university,
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
  personal,
  professional,
  university,
  gamejam,
}

class ProjectsItem extends StatefulWidget {
  final String title;
  final DateTime dateCompleted;
  final DateTime dateStarted;
  final String image;
  final ProjectsSort sort;
  final String navigation;
  ProjectsItem(
    this.title,
    this.dateCompleted, {
    this.dateStarted,
    this.image,
    this.sort,
    this.navigation,
  });

  @override
  _ProjectsItemWidgetState createState() => _ProjectsItemWidgetState();
}

class _ProjectsItemWidgetState extends State<ProjectsItem> {
  var dateFormat = DateFormat("dd-MM-yyyy");

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(widget.image),
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                ),
              ),
            ),
          ),
          ListTile(
            contentPadding: const EdgeInsets.all(10),
            leading: projectsItemIcon(widget.sort),
            title: Text(
              widget.title,
              overflow: TextOverflow.fade,
            ),
            subtitle: Text(
              widget.dateCompleted == null
                  ? "In Production"
                  : dateFormat.format(widget.dateCompleted),
              overflow: TextOverflow.fade,
            ),
          ),
        ],
      ),
    );
  }
}
