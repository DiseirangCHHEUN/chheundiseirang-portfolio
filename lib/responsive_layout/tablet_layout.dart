import 'package:flutter/material.dart';
import 'package:portfolio/pages/about_page.dart';
import 'package:portfolio/pages/certification_page.dart';
import 'package:portfolio/pages/education_page.dart';
import 'package:portfolio/pages/experience_page.dart';
import 'package:portfolio/pages/project_page.dart';
import 'package:portfolio/pages/skill_page.dart';
import '../models/global_list.dart';
import 'web_layout.dart';

class TabletLayout extends StatefulWidget {
  const TabletLayout({super.key});

  @override
  State<TabletLayout> createState() => _TabletLayoutState();
}

class _TabletLayoutState extends State<TabletLayout> {
  int currentPageIndex = 0;
  List page = [
    const AboutPage(),
    const SkillPage(),
    const ProjectPage(),
    const ExperiencePage(),
    const EducationPage(),
    const CertificationPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.transparent.withOpacity(.5),
        child: ListView(
          children: [
            DrawerHeader(
              child: Column(
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/profile.jpg'),
                    maxRadius: 50,
                  ),
                  const SizedBox(height: 5),
                  buildOwnerName('DZ-Rang CHHEUN', 18)
                ],
              ),
            ),
            buildNavItem()
          ],
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/portfolio_bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      alignment: Alignment.centerLeft,
                      height: 50,
                      color: Colors.transparent.withOpacity(.3),
                      child: Row(
                        children: [
                          Builder(builder: (context) {
                            return IconButton(
                              onPressed: () {
                                Scaffold.of(context).openDrawer();
                              },
                              icon: const Icon(
                                Icons.menu,
                                color: Colors.white,
                              ),
                            );
                          }),
                          const SizedBox(
                            width: 10,
                          ),
                          buildOwnerName('Diseirang CHHEUN', 18),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              page[currentPageIndex],
            ],
          ),
        ),
      ),
    );
  }

  buildNavItem() {
    return Column(
      children: [
        for (int i = 0; i < navItem.length; i++)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Row(
              children: [
                Expanded(
                  child: TextButton(
                    style: FilledButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 18),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      backgroundColor: currentPageIndex == i
                          ? const Color(0xFF0042BD)
                          : Colors.cyanAccent.withOpacity(.1),
                    ),
                    onPressed: () {
                      setState(() {
                        currentPageIndex = i;
                        Navigator.pop(context);
                      });
                    },
                    child: Text(
                      currentPageIndex == i
                          ? navItem[i].title!.toUpperCase()
                          : navItem[i].title!,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: currentPageIndex == i
                            ? FontWeight.bold
                            : FontWeight.normal,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
