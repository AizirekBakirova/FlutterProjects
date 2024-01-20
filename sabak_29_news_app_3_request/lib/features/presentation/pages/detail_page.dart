import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sabak_29_news_app_3_request/constants/app_text_style.dart';
import 'package:sabak_29_news_app_3_request/features/data/models/top_news.dart';

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
        title: Text('Detail Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(urlToImage)),
            SizedBox(
              height: 10,
            ),
            // Text(
            //   DateFormat('EEEE dd /').add_jm().format(publishedAt),
            //   style: AppTextStyle.newsStyle,
            // ),
            SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              description,
              style: TextStyle(fontSize: 20, fontStyle: FontStyle.normal),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              author,
              style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
            ),
          ],
        ),
      ),
    );
  }
}
