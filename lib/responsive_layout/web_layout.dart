import 'package:flutter/material.dart';
import 'package:portfolio/pages/about_page.dart';
import 'package:portfolio/pages/certification_page.dart';
import 'package:portfolio/pages/education_page.dart';
import 'package:portfolio/pages/experience_page.dart';
import 'package:portfolio/pages/project_page.dart';
import 'package:portfolio/pages/skill_page.dart';

import '../models/global_list.dart';

class WebLayout extends StatefulWidget {
  const WebLayout({super.key});

  @override
  State<WebLayout> createState() => _WebLayoutState();
}

class _WebLayoutState extends State<WebLayout> {
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
      body: Container(
        padding: const EdgeInsets.only(top: 25),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/portfolio_bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Row(
          children: [
            const Spacer(),
            SizedBox(
              height: double.infinity,
              width: 1100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  buildNavItem(),
                  // screen for replacement
                  page[currentPageIndex],
                ],
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }

  buildNavItem() {
    return Row(
      children: [
        Expanded(
          child: buildOwnerName('Diseirang CHHEUN', 22),
        ),
        for (int i = 0; i < navItem.length; i++)
          TextButton(
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(
                currentPageIndex == i
                    ? const Color(0xFF0042BD)
                    : Colors.cyanAccent.withOpacity(.1),
              ),
            ),
            onPressed: () {
              setState(() {
                currentPageIndex = i;
              });
            },
            child: Text(
              currentPageIndex == i
                  ? navItem[i].title!.toUpperCase()
                  : navItem[i].title!,
              style: TextStyle(
                color: Colors.white,
                fontWeight:
                    currentPageIndex == i ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ),
      ],
    );
  }
}

Text buildOwnerName(String name, double fontSize) {
  return Text(
    name,
    style: TextStyle(
      fontSize: fontSize,
      color: Colors.white,
      fontWeight: FontWeight.bold,
    ),
  );
}
