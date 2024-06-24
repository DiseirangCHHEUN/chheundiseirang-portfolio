import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Language {
  String? title;
  String? logo;

  Language({required this.title, required this.logo});
}

List<Language> language = [
  Language(title: 'Dart', logo: 'assets/icons/dart_logo.png'),
  Language(title: 'Java', logo: 'assets/icons/java_logo.png'),
  Language(title: 'Python', logo: 'assets/icons/python_logo.png'),
  Language(title: 'C#', logo: 'assets/icons/c#_logo.png'),
];

class Framework extends Language {
  Framework({required super.title, required super.logo});
}

List<Framework> framework = [
  Framework(title: 'Flutter', logo: 'assets/icons/flutter_logo.png'),
  Framework(title: 'Spring Boot', logo: 'assets/icons/springboot_logo.png'),
  // Framework(title: 'FastAPI', logo: 'logo'),
  Framework(title: '.Net Core', logo: 'assets/icons/dotnet_logo.png'),
];

class Database extends Language {
  Database({required super.title, required super.logo});
}

List<Database> databases = [
  Database(title: 'MySQL', logo: 'assets/icons/mysql_logo.png'),
  Database(title: 'SQL Server', logo: 'assets/icons/sql_server_logo.png'),
];

class Tool extends Language {
  Tool({required super.title, required super.logo});
}

List<Tool> tools = [
  Tool(title: 'VS Code', logo: 'assets/icons/vscode_logo.png'),
  Tool(title: 'Android Std', logo: 'assets/icons/android_studio_logo.png'),
  Tool(title: 'IntelliJ', logo: 'assets/icons/intellij_logo.png'),
  Tool(title: 'Workbench', logo: 'assets/icons/mysqlworkbench_logo.png'),
  Tool(title: 'Postman', logo: 'assets/icons/postman_logo.png'),
];

class Operating extends Language {
  Operating({required super.title, required super.logo});
}

List<Operating> operatings = [
  // Operating(title: 'Microsoft Windows', logo: 'logo'),
  Operating(title: 'Ubuntu GUI', logo: 'assets/icons/ubuntu_logo.png'),
];

class SocialMedia {
  IconData? icon;
  String? url;
  SocialMedia({required this.icon, required this.url});
}

List<SocialMedia> socialMedias = [
  SocialMedia(
    icon: FontAwesomeIcons.github,
    url: 'https://github.com/DiseirangCHHEUN',
  ),
  SocialMedia(
    icon: FontAwesomeIcons.linkedin,
    url: 'https://www.linkedin.com/in/chheun-diseirang',
  ),
  SocialMedia(
    icon: FontAwesomeIcons.telegram,
    url: 'https://t.me/DiseirangCHHEUN',
  ),
  SocialMedia(
    icon: FontAwesomeIcons.facebook,
    url: 'https://www.facebook.com/ChheunDiseirang',
  ),
];

class NavItem {
  IconData icon;
  String title;
  NavItem({required this.title, required this.icon});
}

List<NavItem> navItem = [
  NavItem(
    icon: Icons.info_rounded,
    title: 'About Me',
  ),
  NavItem(
    icon: Icons.code_rounded,
    title: 'Skills',
  ),
  NavItem(
    icon: Icons.category_rounded,
    title: 'Projects',
  ),
  NavItem(
    icon: Icons.work_rounded,
    title: 'Experiences',
  ),
  NavItem(
    icon: Icons.school_rounded,
    title: 'Education',
  ),
  NavItem(
    icon: Icons.card_membership_rounded,
    title: 'Certification',
  ),
];
