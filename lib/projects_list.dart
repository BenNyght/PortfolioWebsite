import 'package:flutter/material.dart';
import 'package:benjamin_portfolio/widgets/fade_in_two.dart';
import 'package:benjamin_portfolio/projects_item.dart';

class ProjectsList extends StatelessWidget {
  const ProjectsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final activeSorts = {
      ProjectsSort.professional,
      ProjectsSort.personal,
    };

    final sortedProjects = projectsList()
      .where((p) => activeSorts.contains(p.sort))
      .toList()
      ..sort((a, b) => b.dateCompleted.compareTo(a.dateCompleted));

    return FractionallySizedBox(
      widthFactor: 0.8,
      child: LayoutBuilder(
        builder: (context, constraints) {
          final width = constraints.maxWidth;
          final crossAxisCount = width > 2500
              ? 6
              : width > 1800
                  ? 5
                  : width > 1000
                      ? 3
                      : width > 700
                          ? 2
                          : 1;

          return GridView.builder(
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
            padding: const EdgeInsets.all(10),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 1,
            ),
            itemCount: sortedProjects.length,
            itemBuilder: (context, index) {
              return FadeInTwo(
                0.8,
                sortedProjects[index],
              );
            },
          );
        },
      ),
    );
  }
}
