class NewsModel {
  final String images;
  final String text;

  const NewsModel({required this.images, required this.text});
}

NewsModel n1 = const NewsModel(
    images: 'assets/n1.jpg', text: 'There are good news in Kyrgyzstan');

NewsModel n2 = const NewsModel(
    images: 'assets/n2.jpg',
    text:
        'National Geographic continues legacy exploration by venturing to top of Everest with two bold originals');

NewsModel n3 = const NewsModel(
    images: 'assets/n3.jfif',
    text:
        'Editor’s note: Six Climate Change Institute explorers participated in the National Geographic');

NewsModel n4 = const NewsModel(
    images: 'assets/n4.jfif',
    text: 'Doctoral candidate Mariusz Potocki, a member of the climbing team');

NewsModel n5 = const NewsModel(
    images: 'assets/n6.jfif',
    text:
        'Since 1933, when the magazine published a story about flying over the mountain');

NewsModel n6 = const NewsModel(
    images: 'assets/n7.jfif',
    text:
        'Continuing its rich legacy of Everest exploration with unparalleled access ');

NewsModel n7 = const NewsModel(
    images: 'assets/n8.jfif',
    text:
        'Beginning at 9 p.m. EST, “Lost on Everest” investigates one of exploration’s ');
List<NewsModel> newsList = [n1, n2, n3, n4, n5, n6, n7];
