import 'package:flutter/material.dart';
import 'package:portfolio/models/global_list.dart';

class SkillPage extends StatelessWidget {
  const SkillPage({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    bool isMobile = width < 500;
    bool isTablet = width < 1100;
    bool isNotWeb = isMobile || isTablet;
    return Expanded(
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: isNotWeb ? 16 : 50),
        shrinkWrap: true,
        children: [
          SizedBox(height: isNotWeb ? 20 : 100),
          const SkillHeader(title: "👉🏻 Programming Languages"),
          SkillCardList(list: language),
          SizedBox(height: isNotWeb ? 16 : 30),
          const SkillHeader(title: "👉🏻 Frameworks"),
          SkillCardList(list: framework),
          SizedBox(height: isNotWeb ? 16 : 30),
          const SkillHeader(title: "👉🏻 Databases"),
          SkillCardList(list: databases),
          SizedBox(height: isNotWeb ? 16 : 30),
          const SkillHeader(title: "👉🏻 Tools"),
          SkillCardList(list: tools),
          SizedBox(height: isNotWeb ? 16 : 30),
          const SkillHeader(title: "👉🏻 Operating Systems"),
          SkillCardList(list: operatings),
          SizedBox(height: isNotWeb ? 20 : 50),
        ],
      ),
    );
  }
}

class SkillCardList extends StatefulWidget {
  const SkillCardList({super.key, required this.list});
  final List list;

  @override
  State<SkillCardList> createState() => _SkillCardListState();
}

class _SkillCardListState extends State<SkillCardList> {
  int currentHoveredIndex = 0;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    bool isMobile = width < 500;
    bool isTablet = width < 1100;
    bool isNotWeb = isMobile || isTablet;
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: isNotWeb ? 4 : 5,
        mainAxisExtent: isNotWeb ? 110 : 195,
        mainAxisSpacing: isNotWeb ? 10 : 20,
      ),
      itemCount: widget.list.length,
      itemBuilder: (context, index) {
        final hoveredTransform = Matrix4.identity()..scale(1.2);
        final transform = isHovered ? hoveredTransform : Matrix4.identity();
        return MouseRegion(
          onEnter: (event) => onEnter(true, index),
          onExit: (event) => onEnter(false, index),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            transform: currentHoveredIndex == index ? transform : null,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(isNotWeb ? 12 : 15),
                  margin: EdgeInsets.symmetric(
                      horizontal: isNotWeb ? 8 : 20, vertical: 5),
                  height: isNotWeb ? 70 : 150,
                  width: isNotWeb ? 70 : 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.cyan.withOpacity(.2),
                  ),
                  child: Image.asset(widget.list[index].logo!,
                      fit: BoxFit.contain),
                ),
                const SizedBox(height: 5),
                Text(
                  widget.list[index].title!,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: isNotWeb ? 14 : 18,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );

    // return Row(
    //   children: [
    //     for (int i = 0; i < list.length; i++)
    //       Column(
    //         children: [
    //           Container(
    //             padding: EdgeInsets.all(isNotWeb ? 12 : 15),
    //             margin: EdgeInsets.symmetric(horizontal: isNotWeb ? 8 : 20),
    //             height: isNotWeb ? 70 : 100,
    //             width: isNotWeb ? 70 : 100,
    //             decoration: BoxDecoration(
    //               borderRadius: BorderRadius.circular(5),
    //               color: Colors.cyan.withOpacity(.2),
    //             ),
    //             child: Image.asset(list[i].logo!, fit: BoxFit.contain),
    //           ),
    //           const SizedBox(height: 5),
    //           Text(
    //             list[i].title!,
    //             style: const TextStyle(color: Colors.white),
    //           ),
    //         ],
    //       ),
    //   ],
    // );
  }

  bool isHovered = false;
  void onEnter(bool isHovered, int index) {
    setState(() {
      currentHoveredIndex = index;
      this.isHovered = isHovered;
    });
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
    var width = MediaQuery.of(context).size.width;
    bool isMobile = width < 500;
    bool isTablet = width < 1100;
    bool isNotWeb = isMobile || isTablet;
    return Padding(
      padding: EdgeInsets.only(bottom: isNotWeb ? 16 : 30),
      child: Text(
        title,
        style: TextStyle(
          fontSize: isNotWeb ? 18 : 24,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
