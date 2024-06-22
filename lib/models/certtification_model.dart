class CertModel {
  String? image;
  String? sourceUrl;

  CertModel({
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
    image: 'assets/certifications/flutter_ui_bootcamp.jpg',
    sourceUrl:
        'https://www.udemy.com/certificate/UC-e336ec14-1d35-4dfa-91e4-2cd9ec5cedb4/',
  ),
  CertModel(
    image: 'assets/certifications/css_intro.jpg',
    sourceUrl:
        'https://blob.sololearn.com/certificates/906b41c9-35eb-499b-b88e-66c50822d244.pdf',
  ),
  CertModel(
    image: 'assets/certifications/html_intro.jpg',
    sourceUrl:
        'https://blob.sololearn.com/certificates/1af3b1a0-f803-4f14-a489-17a6e986bc6a.pdf',
  ),
  CertModel(
    image: 'assets/certifications/sql_intro.jpg',
    sourceUrl:
        'https://blob.sololearn.com/certificates/a4369d5d-5b3b-446f-988e-d742e1e6395d.pdf',
  ),
  CertModel(
    image: 'assets/certifications/dart_dev_guide.jpg',
    sourceUrl:
        'https://www.udemy.com/certificate/UC-0c5947b4-7542-4d85-ab92-adbfce2733db/',
  ),
  CertModel(
    image: 'assets/certifications/java_intro.jpg',
    sourceUrl:
        'https://blob.sololearn.com/certificates/2e3d3ed9-4a6f-47ef-9713-10b2aeb8d3ef.pdf',
  ),
];
