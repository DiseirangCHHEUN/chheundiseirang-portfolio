import 'package:flutter/material.dart';
import 'package:portfolio/responsive_layout/tablet_layout.dart';
import 'package:portfolio/responsive_layout/web_layout.dart';

import 'pages/responsive_page.dart';
import 'responsive_layout/mobile_layout.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DZ-Rang CHHEUN',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ResponsivePage(
        mobile: MobileLayout(),
        tablet: TabletLayout(),
        web: WebLayout(),
      ),
    );
  }
}
