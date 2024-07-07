class CertModel {
  String? title;
  String? image;
  String? sourceUrl;

  CertModel({
    required this.title,
    required this.image,
    required this.sourceUrl,
  });
}

// List<CertModel> certifications = [
//   CertModel(image: 'assets/certifications/dart_dev_guide.jpg', sourceUrl: 'https://www.udemy.com/certificate/UC-0c5947b4-7542-4d85-ab92-adbfce2733db/'),
//   CertModel(image: 'assets/certifications/java_intro.jpg', sourceUrl: ''),
//   CertModel(image: 'assets/certifications/sql_intro.jpg', sourceUrl: ''),
//   CertModel(image: 'assets/certifications/html_intro.jpg', sourceUrl: ''),
//   CertModel(image: 'assets/certifications/css_intro.jpg', sourceUrl: ''),
// ];

List<CertModel> certifications = [
  CertModel(
    title: 'Flutter UI Bootcamp',
    image: 'assets/certifications/flutter_ui_bootcamp.jpg',
    sourceUrl:
        'https://www.udemy.com/certificate/UC-e336ec14-1d35-4dfa-91e4-2cd9ec5cedb4/',
  ),
  CertModel(
    title: 'Introduction to CSS',
    image: 'assets/certifications/css_intro.jpg',
    sourceUrl:
        'https://blob.sololearn.com/certificates/906b41c9-35eb-499b-b88e-66c50822d244.pdf',
  ),
  CertModel(
    title: 'Introduction to HTML',
    image: 'assets/certifications/html_intro.jpg',
    sourceUrl:
        'https://blob.sololearn.com/certificates/1af3b1a0-f803-4f14-a489-17a6e986bc6a.pdf',
  ),
  CertModel(
    title: 'Introduction to SQL',
    image: 'assets/certifications/sql_intro.jpg',
    sourceUrl:
        'https://blob.sololearn.com/certificates/a4369d5d-5b3b-446f-988e-d742e1e6395d.pdf',
  ),
  CertModel(
    title: 'Introduction to Dart Development Guide',
    image: 'assets/certifications/dart_dev_guide.jpg',
    sourceUrl:
        'https://www.udemy.com/certificate/UC-0c5947b4-7542-4d85-ab92-adbfce2733db/',
  ),
  CertModel(
    title: 'Introduction to Java',
    image: 'assets/certifications/java_intro.jpg',
    sourceUrl:
        'https://blob.sololearn.com/certificates/2e3d3ed9-4a6f-47ef-9713-10b2aeb8d3ef.pdf',
  ),
  CertModel(
    title: 'Android App Development for Beginners',
    image: 'assets/certifications/mobile_app_development.jpg',
    sourceUrl:
        'https://www.simplilearn.com/skillup-certificate-landing?token=eyJjb3Vyc2VfaWQiOiIzMjIwIiwiY2VydGlmaWNhdGVfdXJsIjoiaHR0cHM6XC9cL2NlcnRpZmljYXRlcy5zaW1wbGljZG4ubmV0XC9zaGFyZVwvdGh1bWJfNjg3NzU5NV8xNzIwMzI1MjUwLnBuZyIsInVzZXJuYW1lIjoiRGlzZWlyYW5nIENISEVVTiJ9&utm_source=shared-certificate&utm_medium=lms&utm_campaign=shared-certificate-promotion&referrer=https%3A%2F%2Flms.simplilearn.com%2Fcourses%2F6003%2FMobile-App-Development---Android-App-Development-for-Beginners%2Fcertificate%2Fdownload-skillup&%24web_only=true&_branch_match_id=1330486267000174604&_branch_referrer=H4sIAAAAAAAAA8soKSkottLXL87MLcjJ1EssKNDLyczL1k%2FVjzAOqnL3Myw18k4CANM0MjglAAAA',
  ),
];
