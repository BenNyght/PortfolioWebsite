import 'package:benjamin_portfolio/projects/3dAudio/3d_audio.dart';
import 'package:benjamin_portfolio/projects/adaptiveLevelGeneration/adaptive_level_generation.dart';
import 'package:benjamin_portfolio/projects/altAR/alt_ar.dart';
import 'package:benjamin_portfolio/projects/apocalypseNow/apocalypse_now.dart';
import 'package:benjamin_portfolio/projects/arDragon/ardragon.dart';
import 'package:benjamin_portfolio/projects/archegnomeies/archegnomeies.dart';
import 'package:benjamin_portfolio/projects/battleDonut/battle_donut.dart';
import 'package:benjamin_portfolio/projects/birdsOnShow/birds_on_show.dart';
import 'package:benjamin_portfolio/projects/cityFight/city_fight.dart';
import 'package:benjamin_portfolio/projects/conjoin/conjoin.dart';
import 'package:benjamin_portfolio/projects/dndMapViewer/easy_tabletop.dart';
import 'package:benjamin_portfolio/projects/fishybits2/fishybits2.dart';
import 'package:benjamin_portfolio/projects/flick/flick.dart';
import 'package:benjamin_portfolio/projects/gympieSupport/gympie_support.dart';
import 'package:benjamin_portfolio/projects/papersimulation/paper_simuation.dart';
import 'package:benjamin_portfolio/projects/portfolio/portfolio.dart';
import 'package:benjamin_portfolio/projects/projectManager/project_manager.dart';
import 'package:benjamin_portfolio/projects/runPharaohRun/run_pharaoh_run.dart';
import 'package:benjamin_portfolio/projects/shibaEternity/shibaeternity.dart';
import 'package:benjamin_portfolio/projects/timeJump/time_jump.dart';
import 'package:benjamin_portfolio/projects/vrTreadmill/vr_treadmill.dart';
import 'package:benjamin_portfolio/projects/anatoMe/anatome.dart';
import 'package:benjamin_portfolio/widgets/on_hover.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

List<ProjectsItem> projectsList() {
  return [
    ProjectsItem(
      "Shiba Eternity",
      DateTime(2022, 10, 19),
      image: "lib/projects/shibaeternity/Shiba_Eternity_Logo.png",
      companyImage: "lib/projects/fishybits2/PlaySideCover.png",
      sort: ProjectsSort.professional,
      navigation: ShibaEternity(),
    ),
    ProjectsItem(
      "AR Dragon",
      DateTime(2022, 8, 19),
      image: "lib/projects/arDragon/ardragon-logo.jpg",
      companyImage: "lib/projects/fishybits2/PlaySideCover.png",
      sort: ProjectsSort.professional,
      navigation: ArDragon(),
    ),
    ProjectsItem(
      "Fishy Bits 2",
      DateTime(2022, 5, 15),
      image: "lib/projects/fishybits2/fishybits1.png",
      companyImage: "lib/projects/fishybits2/PlaySideCover.png",
      sort: ProjectsSort.professional,
      navigation: FishyBits(),
    ),
    ProjectsItem(
      "AnatoMe",
      DateTime(2021, 12, 11),
      image: "lib/projects/anatoMe/AnatoMe.png",
      companyImage: "lib/projects/anatoMe/SpinDriftCover.png",
      sort: ProjectsSort.professional,
      navigation: AnatoMe(),
    ),
    ProjectsItem(
      "Portfolio",
      DateTime(2019, 1, 1),
      image: "lib/projects/portfolio/background.jpg",
      companyImage: "lib/projects/portfolio/PersonalCover.png",
      sort: ProjectsSort.personal,
      navigation: Portfolio(),
    ),
    ProjectsItem(
      "Adaptive Level Generation",
      DateTime(2021, 11, 1),
      image: "lib/projects/adaptiveLevelGeneration/adaptivelevel.png",
      companyImage:
          "lib/projects/adaptiveLevelGeneration/ImmortalityInteractiveCover.png",
      sort: ProjectsSort.professional,
      navigation: AdaptiveLevelGeneration(),
    ),
    ProjectsItem(
      "Alt-AR",
      DateTime(2021, 1, 28),
      image: "lib/projects/altAR/altAR.jpg",
      companyImage: "lib/projects/altAR/AnywhereFestivalCover.png",
      sort: ProjectsSort.professional,
      navigation: AltAR(),
    ),
    ProjectsItem(
      "VR Movement Tracking",
      DateTime(2020, 2, 29),
      image: "lib/projects/vrTreadmill/Screenshot_5.png",
      companyImage: "lib/projects/vrTreadmill/EngageLabCover.png",
      sort: ProjectsSort.professional,
      navigation: VRTreadmill(),
    ),
    ProjectsItem(
      "Apocalypse Now? (48hr Sunjam 2019)",
      DateTime(2019, 7, 12),
      dateStarted: DateTime(2019, 7, 15),
      image: "lib/projects/apocalypseNow/apocalypseNow.jpg",
      companyImage: "lib/projects/timeJump/SunjamCover.png",
      sort: ProjectsSort.gamejam,
      navigation: ApocalypseNow(),
    ),
    ProjectsItem(
      "Time Jump (48hr Sunjam 2018)",
      DateTime(2018, 7, 12),
      dateStarted: DateTime(2018, 7, 15),
      image: "lib/projects/timeJump/timeJump.png",
      companyImage: "lib/projects/timeJump/SunjamCover.png",
      sort: ProjectsSort.gamejam,
      navigation: TimeJump(),
    ),
    ProjectsItem(
      "Flick (48hr Global Game Jam 2019)",
      DateTime(2019, 1, 31),
      dateStarted: DateTime(2019, 1, 27),
      image: "lib/projects/flick/flick.jpg",
      companyImage: "lib/projects/flick/GlobalGameJamCover.png",
      sort: ProjectsSort.gamejam,
      navigation: Flick(),
    ),
    ProjectsItem(
      "Run Pharaoh Run!",
      DateTime(2020, 1, 31),
      dateStarted: DateTime(2020, 1, 27),
      image: "lib/projects/runPharaohRun/runPharaohRun.jpg",
      companyImage: "lib/projects/runPharaohRun/GlobalGameJamCover.png",
      sort: ProjectsSort.gamejam,
      navigation: RunPharaohRun(),
    ),
    ProjectsItem(
      "Nyght's 3D Audio",
      DateTime(2020, 8, 10),
      dateStarted: DateTime(2020, 8, 16),
      image: "lib/projects/3dAudio/audiologo.png",
      companyImage: "lib/projects/3dAudio/AudioJamCover.png",
      sort: ProjectsSort.gamejam,
      navigation: ThreeDAudio(),
    ),
    ProjectsItem(
      "Easy Tabletop Tools",
      DateTime(2020, 3, 1),
      image: "lib/projects/dndMapViewer/d&dViewerLogo.png",
      companyImage: "lib/projects/dndMapViewer/PersonalCover.png",
      sort: ProjectsSort.personal,
      navigation: EasyTabletop(),
    ),
    ProjectsItem(
      "CityFight (Digital Re-imagining)",
      DateTime(2019, 11, 13),
      image: "lib/projects/cityFight/cityFightLogo.png",
      companyImage: "lib/projects/cityFight/ArmyCover.png",
      sort: ProjectsSort.professional,
      navigation: CityFight(),
    ),
    ProjectsItem(
      "BirdsOnShow AR App",
      DateTime(2019, 9, 16),
      dateStarted: DateTime(2019, 8, 16),
      image: "lib/projects/birdsOnShow/birds.jpg",
      companyImage: "lib/projects/birdsOnShow/MaryCairncrossCover.png",
      sort: ProjectsSort.professional,
      navigation: BirdsOnShow(),
    ),
    ProjectsItem(
      "Battle Donut",
      DateTime(2019, 10, 20),
      dateStarted: DateTime(2019, 10, 1),
      image: "lib/projects/battleDonut/battleDonut.png",
      companyImage: "lib/projects/battleDonut/SeriousGamesCover.png",
      sort: ProjectsSort.university,
      navigation: BattleDonut(),
    ),
    ProjectsItem(
      "Arch E-Gnome-ies",
      DateTime(2019, 4, 12),
      dateStarted: DateTime(2019, 4, 1),
      image: "lib/projects/archegnomeies/archegnomeies.png",
      companyImage: "lib/projects/archegnomeies/SeriousGamesCover.png",
      sort: ProjectsSort.university,
      navigation: Archegnomeies(),
    ),
    ProjectsItem(
      "Conjoin",
      DateTime(2020, 10, 18),
      image: "lib/projects/conjoin/conjoin.jpg",
      companyImage: "lib/projects/conjoin/PersonalCover.png",
      sort: ProjectsSort.personal,
      navigation: Conjoin(),
    ),
    ProjectsItem(
      "Project Manager",
      DateTime(2020, 12, 23),
      image: "lib/projects/projectManager/cidselDatabase.jpg",
      companyImage: "lib/projects/projectManager/USCCidselCover.png",
      sort: ProjectsSort.professional,
      navigation: ProjectManager(),
    ),
    ProjectsItem(
      "Hometown Buddy (Gympie Region)",
      DateTime(2020, 12, 18),
      image: "lib/projects/gympieSupport/gympieSupport.jpg",
      companyImage: "lib/projects/gympieSupport/CommunityActionCover.png",
      sort: ProjectsSort.professional,
      navigation: GympieSupport(),
    ),
    ProjectsItem(
      "Paper Sorting Simulation",
      DateTime(2021, 7, 15),
      image: "lib/projects/papersimulation/2.jpg",
      companyImage: "lib/projects/papersimulation/EndeavourFoundationCover.png",
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

// ignore: must_be_immutable
class ProjectsItem extends StatelessWidget {
  final String title;
  final DateTime dateCompleted;
  final DateTime? dateStarted;
  final String? image;
  final String? companyImage;
  final ProjectsSort? sort;
  final Widget? navigation;
  ProjectsItem(
    this.title,
    this.dateCompleted, {
    this.dateStarted,
    this.image,
    this.companyImage,
    this.sort,
    this.navigation,
  });

  var dateFormat = DateFormat("dd-MM-yyyy");

  @override
  Widget build(BuildContext context) {
    precacheImage(AssetImage(image!), context);
    precacheImage(AssetImage(companyImage!), context);
    return OnHover(builder: (isHovered) {
      final color = isHovered
          ? Colors.blueGrey[100]?.withOpacity(0)
          : Colors.blueGrey[100]?.withOpacity(0.2);
      return PhysicalModel(
        color: Colors.transparent,
        child: GestureDetector(
          onTap: () {
            if (navigation != null) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => navigation!,
                  ));
            }
          },
          child: Card(
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(0),
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15)),
            ),
            child: Column(
              children: [
                Expanded(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                            image: AssetImage(image!),
                            fit: BoxFit.cover,
                            alignment: Alignment.center,
                          ),
                        ),
                      ),
                      Container(
                        color: color,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            image: DecorationImage(
                              image: AssetImage(companyImage!),
                              fit: BoxFit.fitWidth,
                              alignment: Alignment.bottomCenter,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                ListTile(
                  contentPadding: const EdgeInsets.all(10),
                  leading: projectsItemIcon(sort!),
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
        ),
      );
    });
  }
}
