import 'package:flutter/material.dart';
import 'package:portfolio/models/global_list.dart';

class EducationPage extends StatelessWidget {
  const EducationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        shrinkWrap: true,
        children: [
          const SizedBox(height: 100),
          const SkillHeader(title: "Programming Languages"),
          SkillCardList(list: language),
          const SizedBox(height: 30),
          const SkillHeader(title: "Frameworks"),
          SkillCardList(list: framework),
          const SizedBox(height: 30),
          const SkillHeader(title: "Databases"),
          SkillCardList(list: databases),
          const SizedBox(height: 30),
          const SkillHeader(title: "Tools"),
          SkillCardList(list: tools),
          const SizedBox(height: 30),
          const SkillHeader(title: "Operating Systems"),
          SkillCardList(list: framework),
        ],
      ),
    );
  }
}

class SkillCardList extends StatelessWidget {
  const SkillCardList({super.key, required this.list});
  final List list;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (int i = 0; i < list.length; i++)
          Column(
            children: [
              Container(
                padding: const EdgeInsets.all(15),
                margin: const EdgeInsets.symmetric(horizontal: 20),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.transparent.withOpacity(.2),
                ),
                child: Image.asset(list[i].logo!, fit: BoxFit.contain),
              ),
              const SizedBox(height: 5),
              Text(
                list[i].title!,
                style: const TextStyle(color: Colors.white),
              ),
            ],
          ),
      ],
    );
  }
}

class SkillHeader extends StatelessWidget {
  const SkillHeader({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
