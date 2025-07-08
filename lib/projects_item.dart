import 'package:benjamin_portfolio/projects/3dAudio/3d_audio.dart';
import 'package:benjamin_portfolio/projects/adaptiveLevelGeneration/adaptive_level_generation.dart';
import 'package:benjamin_portfolio/projects/altAR/alt_ar.dart';
import 'package:benjamin_portfolio/projects/apocalypseNow/apocalypse_now.dart';
import 'package:benjamin_portfolio/projects/arDragon/ardragon.dart';
import 'package:benjamin_portfolio/projects/archegnomeies/archegnomeies.dart';
import 'package:benjamin_portfolio/projects/battleDonut/battle_donut.dart';
import 'package:benjamin_portfolio/projects/birdsOnShow/birds_on_show.dart';
import 'package:benjamin_portfolio/projects/cityFight/city_fight.dart';
import 'package:benjamin_portfolio/projects/civ7vr/civ7vr.dart';
import 'package:benjamin_portfolio/projects/conjoin/conjoin.dart';
import 'package:benjamin_portfolio/projects/dndMapViewer/easy_tabletop.dart';
import 'package:benjamin_portfolio/projects/dumbWaysVR/dumbwaysvr.dart';
import 'package:benjamin_portfolio/projects/fishybits2/fishybits2.dart';
import 'package:benjamin_portfolio/projects/flick/flick.dart';
import 'package:benjamin_portfolio/projects/game-of-thrones/gameofthrones.dart';
import 'package:benjamin_portfolio/projects/gympieSupport/gympie_support.dart';
import 'package:benjamin_portfolio/projects/mouse/mouse.dart';
import 'package:benjamin_portfolio/projects/papersimulation/paper_simuation.dart';
import 'package:benjamin_portfolio/projects/portfolio/portfolio.dart';
import 'package:benjamin_portfolio/projects/projectManager/project_manager.dart';
import 'package:benjamin_portfolio/projects/runPharaohRun/run_pharaoh_run.dart';
import 'package:benjamin_portfolio/projects/shattered/shattered.dart';
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
      title: "MOUSE: P.I. For Hire",
      dateCompleted: DateTime(2022, 10, 19),
      image: "lib/projects/shibaeternity/Shiba_Eternity_Logo.png",
      companyImage: "assets/companies/meta/meta-project-cover.png",
      sort: ProjectsSort.professional,
      navigation: MousePage(),
    ),
    ProjectsItem(
      title: "Dumb Ways Free For All",
      dateCompleted: DateTime(2022, 10, 19),
      image: "lib/projects/shibaeternity/Shiba_Eternity_Logo.png",
      companyImage: "assets/companies/meta/meta-project-cover.png",
      sort: ProjectsSort.professional,
      navigation: DumbWaysVRPage(),
    ),
    ProjectsItem(
      title: "Civilization 7 VR",
      dateCompleted: DateTime(2022, 10, 19),
      image: "lib/projects/shibaeternity/Shiba_Eternity_Logo.png",
      companyImage: "assets/companies/meta/meta-project-cover.png",
      sort: ProjectsSort.professional,
      navigation: Civ7VrPage(),
    ),
    ProjectsItem(
      title: "Shattered (MR)",
      dateCompleted: DateTime(2022, 10, 19),
      image: "lib/projects/shibaeternity/Shiba_Eternity_Logo.png",
      companyImage: "assets/companies/meta/meta-project-cover.png",
      sort: ProjectsSort.professional,
      navigation: ShatteredPage(),
    ),
    ProjectsItem(
      title: "Shiba Eternity",
      dateCompleted: DateTime(2022, 10, 19),
      image: "lib/projects/shibaeternity/Shiba_Eternity_Logo.png",
      companyImage: "lib/projects/fishybits2/PlaySideCover.png",
      sort: ProjectsSort.professional,
      navigation: ShibaEternityPage(),
    ),
    ProjectsItem(
      title: "AR Dragon",
      dateCompleted: DateTime(2022, 8, 19),
      image: "lib/projects/arDragon/ardragon-logo.jpg",
      companyImage: "lib/projects/fishybits2/PlaySideCover.png",
      sort: ProjectsSort.professional,
      navigation: ArDragonPage(),
    ),
    ProjectsItem(
      title: "Fishy Bits 2",
      dateCompleted: DateTime(2022, 5, 15),
      image: "lib/projects/fishybits2/fishybits1.png",
      companyImage: "lib/projects/fishybits2/PlaySideCover.png",
      sort: ProjectsSort.professional,
      navigation: FishyBitsPage(),
    ),
  ];
}

List<ProjectsItem> oldProjectsList() {
  return [
    ProjectsItem(
      title: "AnatoMe",
      dateCompleted: DateTime(2021, 12, 11),
      image: "lib/projects/anatoMe/AnatoMe.png",
      companyImage: "lib/projects/anatoMe/SpinDriftCover.png",
      sort: ProjectsSort.professional,
      navigation: AnatoMePage(),
    ),
    ProjectsItem(
      title: "Adaptive Level Generation",
      dateCompleted: DateTime(2021, 11, 1),
      image: "lib/projects/adaptiveLevelGeneration/adaptivelevel.png",
      companyImage:
          "lib/projects/adaptiveLevelGeneration/ImmortalityInteractiveCover.png",
      sort: ProjectsSort.professional,
      navigation: AdaptiveLevelGenerationPage(),
    ),
    ProjectsItem(
      title: "Paper Sorting Simulation",
      dateCompleted: DateTime(2021, 7, 15),
      image: "lib/projects/papersimulation/2.jpg",
      companyImage: "lib/projects/papersimulation/EndeavourFoundationCover.png",
      sort: ProjectsSort.professional,
      navigation: PaperSimulationPage(),
    ),
    ProjectsItem(
      title: "Alt-AR",
      dateCompleted: DateTime(2021, 1, 28),
      image: "lib/projects/altAR/altAR.jpg",
      companyImage: "lib/projects/altAR/AnywhereFestivalCover.png",
      sort: ProjectsSort.professional,
      navigation: AltARPage(),
    ),
    ProjectsItem(
      title: "Project Manager",
      dateCompleted: DateTime(2020, 12, 23),
      image: "lib/projects/projectManager/cidselDatabase.jpg",
      companyImage: "lib/projects/projectManager/USCCidselCover.png",
      sort: ProjectsSort.professional,
      navigation: ProjectManagerPage(),
    ),
    ProjectsItem(
      title: "Hometown Buddy (Gympie Region)",
      dateCompleted: DateTime(2020, 12, 18),
      image: "lib/projects/gympieSupport/gympieSupport.jpg",
      companyImage: "lib/projects/gympieSupport/CommunityActionCover.png",
      sort: ProjectsSort.professional,
      navigation: GympieSupportPage(),
    ),
    ProjectsItem(
      title: "Conjoin",
      dateCompleted: DateTime(2020, 10, 18),
      image: "lib/projects/conjoin/conjoin.jpg",
      companyImage: "lib/projects/conjoin/PersonalCover.png",
      sort: ProjectsSort.personal,
      navigation: ConjoinPage(),
    ),
    ProjectsItem(
      title: "Nyght's 3D Audio",
      dateCompleted: DateTime(2020, 8, 10),
      dateStarted: DateTime(2020, 8, 16),
      image: "lib/projects/3dAudio/audiologo.png",
      companyImage: "lib/projects/3dAudio/AudioJamCover.png",
      sort: ProjectsSort.gamejam,
      navigation: ThreeDAudioPage(),
    ),
    ProjectsItem(
      title: "Easy Tabletop Tools",
      dateCompleted: DateTime(2020, 3, 1),
      image: "lib/projects/dndMapViewer/d&dViewerLogo.png",
      companyImage: "lib/projects/dndMapViewer/PersonalCover.png",
      sort: ProjectsSort.personal,
      navigation: EasyTabletopPage(),
    ),
    ProjectsItem(
      title: "VR Movement Tracking",
      dateCompleted: DateTime(2020, 2, 29),
      image: "lib/projects/vrTreadmill/Screenshot_5.png",
      companyImage: "lib/projects/vrTreadmill/EngageLabCover.png",
      sort: ProjectsSort.professional,
      navigation: VRTreadmillPage(),
    ),
    ProjectsItem(
      title: "Run Pharaoh Run!",
      dateCompleted: DateTime(2020, 1, 31),
      dateStarted: DateTime(2020, 1, 27),
      image: "lib/projects/runPharaohRun/runPharaohRun.jpg",
      companyImage: "lib/projects/runPharaohRun/GlobalGameJamCover.png",
      sort: ProjectsSort.gamejam,
      navigation: RunPharaohRunPage(),
    ),
    ProjectsItem(
      title: "CityFight (Digital Re-imagining)",
      dateCompleted: DateTime(2019, 11, 13),
      image: "lib/projects/cityFight/cityFightLogo.png",
      companyImage: "lib/projects/cityFight/ArmyCover.png",
      sort: ProjectsSort.professional,
      navigation: CityFightPage(),
    ),
    ProjectsItem(
      title: "Battle Donut",
      dateCompleted: DateTime(2019, 10, 20),
      dateStarted: DateTime(2019, 10, 1),
      image: "lib/projects/battleDonut/battleDonut.png",
      companyImage: "lib/projects/battleDonut/SeriousGamesCover.png",
      sort: ProjectsSort.university,
      navigation: BattleDonutPage(),
    ),
    ProjectsItem(
      title: "BirdsOnShow AR App",
      dateCompleted: DateTime(2019, 9, 16),
      dateStarted: DateTime(2019, 8, 16),
      image: "lib/projects/birdsOnShow/birds.jpg",
      companyImage: "lib/projects/birdsOnShow/MaryCairncrossCover.png",
      sort: ProjectsSort.professional,
      navigation: BirdsOnShowPage(),
    ),
    ProjectsItem(
      title: "Apocalypse Now? (48hr Sunjam 2019)",
      dateCompleted: DateTime(2019, 7, 12),
      dateStarted: DateTime(2019, 7, 15),
      image: "lib/projects/apocalypseNow/apocalypseNow.jpg",
      companyImage: "lib/projects/timeJump/SunjamCover.png",
      sort: ProjectsSort.gamejam,
      navigation: ApocalypseNowPage(),
    ),
    ProjectsItem(
      title: "Arch E-Gnome-ies",
      dateCompleted: DateTime(2019, 4, 12),
      dateStarted: DateTime(2019, 4, 1),
      image: "lib/projects/archegnomeies/archegnomeies.png",
      companyImage: "lib/projects/archegnomeies/SeriousGamesCover.png",
      sort: ProjectsSort.university,
      navigation: ArchegnomeiesPage(),
    ),
    ProjectsItem(
      title: "Flick (48hr Global Game Jam 2019)",
      dateCompleted: DateTime(2019, 1, 31),
      dateStarted: DateTime(2019, 1, 27),
      image: "lib/projects/flick/flick.jpg",
      companyImage: "lib/projects/flick/GlobalGameJamCover.png",
      sort: ProjectsSort.gamejam,
      navigation: FlickPage(),
    ),
    ProjectsItem(
      title: "Portfolio",
      dateCompleted: DateTime(2019, 1, 1),
      image: "lib/projects/portfolio/background.jpg",
      companyImage: "lib/projects/portfolio/PersonalCover.png",
      sort: ProjectsSort.personal,
      navigation: PortfolioPage(),
    ),
    ProjectsItem(
      title: "Time Jump (48hr Sunjam 2018)",
      dateCompleted: DateTime(2018, 7, 12),
      dateStarted: DateTime(2018, 7, 15),
      image: "lib/projects/timeJump/timeJump.png",
      companyImage: "lib/projects/timeJump/SunjamCover.png",
      sort: ProjectsSort.gamejam,
      navigation: TimeJumpPage(),
    ),
  ];
}

enum ProjectsSort { 
  professional, 
  personal, 
  university, 
  gamejam 
}

extension ProjectsSortIcon on ProjectsSort {
  Icon get icon {
    switch (this) {
      case ProjectsSort.gamejam:
        return const Icon(Icons.speed);
      case ProjectsSort.university:
        return const Icon(Icons.school);
      case ProjectsSort.professional:
        return const Icon(Icons.work);
      case ProjectsSort.personal:
        return const Icon(Icons.person);
    }
  }
}

class ProjectsItem extends StatelessWidget {
  final String title;
  final DateTime dateCompleted;
  final DateTime? dateStarted;
  final String image;
  final String companyImage;
  final ProjectsSort sort;
  final Widget navigation;

  const ProjectsItem({
    required this.title,
    required this.dateCompleted,
    this.dateStarted,
    required this.image,
    required this.companyImage,
    required this.sort,
    required this.navigation,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Preload images for smooth transitions
    precacheImage(AssetImage(image), context);
    precacheImage(AssetImage(companyImage), context);

    final formattedDate = DateFormat('dd-MM-yyyy').format(dateCompleted);

    return OnHover(
      builder: (isHovered) {
        final overlay = isHovered
          ? Colors.transparent
          : Colors.blueGrey.withAlpha((0.2 * 255).toInt());

        return Material(
          elevation: 8,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
          ),
          clipBehavior: Clip.antiAlias,
          child: InkWell(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (_) => navigation),
            ),
            child: Column(
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      // Background project image
                      Positioned.fill(
                        child: Image.asset(
                          image,
                          fit: BoxFit.cover,
                        ),
                      ),
                      // Hover overlay
                      Positioned.fill(
                        child: Container(color: overlay),
                      ),
                      // Company watermark
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Image.asset(
                          companyImage,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ],
                  ),
                ),
                ListTile(
                  contentPadding: const EdgeInsets.all(10),
                  leading: sort.icon,
                  title: Text(
                    title,
                    overflow: TextOverflow.fade,
                    maxLines: 1,
                  ),
                  //subtitle: Text(
                  //  formattedDate,
                  //  overflow: TextOverflow.fade,
                  //  maxLines: 1,
                  //),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
