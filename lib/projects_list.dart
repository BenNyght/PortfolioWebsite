import 'package:benjamin_portfolio/widgets/fade_in_two.dart';
import 'package:benjamin_portfolio/projects_item.dart';
import 'package:flutter/material.dart';

class ProjectsList extends StatefulWidget {
  ProjectsList({Key? key}) : super(key: key);

  @override
  _ProjectsListState createState() => _ProjectsListState();
}

class _ProjectsListState extends State<ProjectsList> {
  Map<ProjectsSort, bool> sortActive = new Map<ProjectsSort, bool>();

  @override
  Widget build(BuildContext context) {
    double _screenWidth = MediaQuery.of(context).size.width;
    int _crossAxisCount = 4;
    if (_screenWidth > 2500) {
      _crossAxisCount = 5;
    } else if (_screenWidth > 1800) {
      _crossAxisCount = 4;
    } else if (_screenWidth > 1000) {
      _crossAxisCount = 3;
    } else if (_screenWidth > 700) {
      _crossAxisCount = 2;
    } else {
      _crossAxisCount = 1;
    }

    // Show professional and personal projects by default
    for (var i = 0; i < ProjectsSort.values.length; i++) {
      if (!sortActive.containsKey(ProjectsSort.values[i])) {
        if (ProjectsSort.values[i] == ProjectsSort.gamejam ||
            ProjectsSort.values[i] == ProjectsSort.university ||
            ProjectsSort.values[i] == ProjectsSort.personal
            ) {
          sortActive[ProjectsSort.values[i]] = false;
        } else {
          sortActive[ProjectsSort.values[i]] = true;
        }
      }
    }

    List<ProjectsItem> sortedProjects = [];
    for (var i = 0; i < projectsList().length; i++) {
      if (sortActive[projectsList()[i].sort] ?? false) {
        sortedProjects.add(projectsList()[i]);
      }
    }

    sortedProjects.sort((b, a) => a.dateCompleted.compareTo(b.dateCompleted));

    return FractionallySizedBox(
      widthFactor: 0.8,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          /* - Disabled project type selection
          Container(
            margin: EdgeInsets.all(15),
            child: Center(
              child: Wrap(
                spacing: 10,
                runSpacing: 10,
                children: List<Widget>.generate(
                  ProjectsSort.values.length,
                  (int index) {
                    String sortType =
                        ProjectsSort.values[index].toString().split('.').last;

                    return ChoiceChip(
                      avatar: sortActive[ProjectsSort.values[index]] ?? false
                          ? Icon(Icons.done)
                          : null,
                      label: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                            "${sortType[0].toUpperCase()}${sortType.substring(1)}",
                            style: TextStyle(fontSize: 20)),
                      ),
                      selected: sortActive[ProjectsSort.values[index]] ?? false,
                      backgroundColor: Colors.grey[200],
                      selectedColor: Colors.grey[300],
                      labelStyle: TextStyle(color: Color(0xFF232323)),
                      onSelected: (bool selected) {
                        setState(() {
                          sortActive[ProjectsSort.values[index]] = !(sortActive[ProjectsSort.values[index]] ?? false);
                        });
                      },
                    );
                  },
                ).toList(),
              ),
            ),
          ),
          */
          GridView.builder(
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            padding: EdgeInsets.all(10),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: _crossAxisCount),
            itemBuilder: (_, index) => FadeInTwo(0.8, sortedProjects[index]),
            itemCount: sortedProjects.length,
          ),
        ],
      ),
    );
  }
}
