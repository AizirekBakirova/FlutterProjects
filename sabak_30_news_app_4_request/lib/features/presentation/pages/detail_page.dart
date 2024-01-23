import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage(
      {super.key,
      required this.urlToImage,
      required this.title,
      required this.description,
      required this.publishedAt,
      required this.author,
      required this.content});
  final String urlToImage;
  final String title;
  final String description;
  final DateTime publishedAt;
  final String content;
  final String author;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(urlToImage)),
            const SizedBox(
              height: 10,
            ),
            // Text(
            //   DateFormat('EEEE dd /').add_jm().format(publishedAt),
            //   style: AppTextStyle.newsStyle,
            // ),
            const SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              description,
              style: const TextStyle(fontSize: 20, fontStyle: FontStyle.normal),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              author,
              style: const TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
            ),
          ],
        ),
      ),
    );
  }
}
