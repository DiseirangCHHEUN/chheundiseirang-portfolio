class ProjectModel {
  String? pName;
  String? pDescription;
  String? image;
  String? vdo;
  String? pStartDate;
  String? pEngDate;

  ProjectModel({
    required this.pName,
    required this.pDescription,
    required this.vdo,
    required this.image,
    required this.pStartDate,
    required this.pEngDate,
  });
}

List<ProjectModel> projects = [
  ProjectModel(
    pName: 'The 9New',
    pDescription:
        'In this app, you can read a lot of article of news from multi sources with pagination, this app can save news to favorite and store in local storage for offline reading, can save picture in the news to image gallery, switch from theme with dark and light mode, change between two language English and Khmer.',
    image: 'assets/projects/the_9news.png',
    vdo: 'assets/videos/the_9news.MOV',
    pStartDate: 'May 25, 2024',
    pEngDate: 'May 27, 2024',
  ),
  ProjectModel(
    pName: 'The Movie',
    pDescription:
        'This app use API from sala-it movie. It can watch online video, download to local storage to watch when you do not have internet connection, add to favorite for later watch, remove downloaded video from local storage, change between two language English and Khmer...',
    image: 'assets/projects/the_movie.png',
    vdo: 'assets/videos/the_movie.mov',
    pStartDate: 'May 25, 2024',
    pEngDate: 'May 27, 2024',
  ),
  ProjectModel(
    pName: 'Ecommerce',
    pDescription:
        'The app can read a lot of article of news from multi sources with pagination, this app can save news to favorite and store in local storage for offline reading, can save picture in the news to image gallery, switch from theme with dark and light mode, change between two language English and Khmer.',
    image: 'assets/projects/ecommerce.png',
    vdo: 'assets/videos/ecommerce.mov',
    pStartDate: 'May 25, 2024',
    pEngDate: 'May 27, 2024',
  ),
];
