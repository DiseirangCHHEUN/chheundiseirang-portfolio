import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/models/global_list.dart';
import 'package:url_launcher/url_launcher.dart';

import '../responsive_layout/web_layout.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  bool isHovered = false;
  int currentHoveredIndex = 0;

  void onEnter(bool isHovered, int index) {
    setState(() {
      currentHoveredIndex = index;
      this.isHovered = isHovered;
    });
  }

  @override
  Widget build(BuildContext context) {
    launchInBrowser({required String sourceUrl}) async {
      final Uri url = Uri.parse(sourceUrl);
      if (await launchUrl(
        url,
        mode: LaunchMode.externalApplication,
      )) {
        throw Exception('Could not launch $url');
      }
    }

    var width = MediaQuery.of(context).size.width;
    bool isMobile = width <= 500;
    bool isTablet = width <= 1100;
    bool isNotWeb = isMobile || isTablet;
    bool isWeb = width > 1100;
    double padding = 25;
    final hoveredTransform = Matrix4.identity()..scale(1.2);
    final transform = isHovered ? hoveredTransform : Matrix4.identity();

    return Expanded(
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: padding),
        shrinkWrap: true,
        children: [
          SizedBox(height: isNotWeb ? 20 : 100),
          Visibility(
            visible: isNotWeb,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 3,
                      color: const Color(0xFF32D5FC),
                      strokeAlign: BorderSide.strokeAlignOutside,
                    ),
                    borderRadius: BorderRadius.circular(100),
                    image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/profile.jpg'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: isNotWeb ? 15 : 30),
          Row(
            children: [
              SizedBox(
                width: isNotWeb ? width * .9 - padding : 600,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello, \nI'm DZ-Rang CHHEUN",
                      style: TextStyle(
                        fontSize: isMobile ? 26 : 42,
                        fontWeight: FontWeight.bold,
                        color: Colors.cyan,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "a passionate Flutter developer with a strong foundation in software development and a keen interest in building innovative mobile applications. With a solid understanding of Flutter's architecture and a knack for problem-solving, I strive to deliver high-quality, user-friendly, and efficient solutions.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: isNotWeb ? 16 : 20,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: isNotWeb ? 15 : 30),
          buildOwnerName('Contact me at 👇🏻', isNotWeb ? 18 : 20),
          const SizedBox(height: 10),
          Row(
            children: [
              for (int i = 0; i < socialMedias.length; i++)
                GestureDetector(
                  onTap: () {
                    launchInBrowser(sourceUrl: socialMedias[i].url!);
                  },
                  child: MouseRegion(
                    onEnter: (event) => onEnter(true, i),
                    onExit: (event) => onEnter(false, i),
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      transform: currentHoveredIndex == i ? transform : null,
                      child: Container(
                        alignment: Alignment.center,
                        height: isNotWeb ? 40 : 60,
                        width: isNotWeb ? 40 : 60,
                        margin: const EdgeInsets.only(right: 20),
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: isNotWeb
                                  ? Colors.deepPurpleAccent
                                  : const Color(0xFF32D5FC),
                              width: isNotWeb ? 2 : 3),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: FaIcon(
                          socialMedias[i].icon,
                          color: Colors.white,
                          size: isNotWeb ? 26 : 40,
                        ),
                      ),
                    ),
                  ),
                ),
            ],
          ),
          SizedBox(height: isNotWeb ? 15 : 30),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.white.withOpacity(.1)),
            child: Row(
              children: [
                Icon(
                  Icons.phone,
                  size: isNotWeb ? 22 : 30,
                  color: Colors.white,
                ),
                const SizedBox(width: 10),
                Text(
                  '+855 968 366 642',
                  style: TextStyle(
                      color: Colors.white, fontSize: isNotWeb ? 16 : 24),
                ),
              ],
            ),
          ),
          SizedBox(height: isNotWeb ? 15 : 30),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.white.withOpacity(.1)),
            child: Row(
              children: [
                Icon(
                  Icons.email_rounded,
                  size: isNotWeb ? 22 : 30,
                  color: Colors.white,
                ),
                const SizedBox(width: 10),
                Text(
                  'chheundiseirang@gmail.com',
                  style: TextStyle(
                      color: Colors.white, fontSize: isNotWeb ? 16 : 24),
                ),
              ],
            ),
          ),
          SizedBox(height: isNotWeb ? 15 : 30),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.white.withOpacity(.1)),
            child: Row(
              children: [
                Icon(
                  Icons.pin_drop_rounded,
                  size: isNotWeb ? 22 : 30,
                  color: Colors.white,
                ),
                const SizedBox(width: 10),
                Text(
                  'Phnom Penh, Cambodia.',
                  style: TextStyle(
                      color: Colors.white, fontSize: isNotWeb ? 16 : 24),
                ),
              ],
            ),
          ),
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'All rights reserved ',
                style: TextStyle(
                  fontSize: isWeb ? 20 : 16,
                  color: Colors.white,
                ),
              ),
              Text(
                'DZ-Rang ©2024',
                style: TextStyle(
                  fontSize: isWeb ? 20 : 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Power by  ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: isWeb ? 20 : 16,
                ),
              ),
              FlutterLogo(
                size: isWeb ? 30 : 20,
              ),
              Text(
                ' Flutter',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: isWeb ? 20 : 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
