import 'package:flutter/material.dart';
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
  SocialMedia({required this.icon});
}

List<SocialMedia> socialMedias = [
  SocialMedia(icon: FontAwesomeIcons.github),
  SocialMedia(icon: FontAwesomeIcons.linkedin),
  SocialMedia(icon: FontAwesomeIcons.telegram),
  SocialMedia(icon: FontAwesomeIcons.facebook),
];

class NavItem {
  String? title;
  NavItem({required this.title});
}

List<NavItem> navItem = [
  NavItem(title: 'About Me'),
  NavItem(title: 'Skills'),
  NavItem(title: 'Projects'),
  NavItem(title: 'Experiences'),
  NavItem(title: 'Education'),
  NavItem(title: 'Certification'),
];
