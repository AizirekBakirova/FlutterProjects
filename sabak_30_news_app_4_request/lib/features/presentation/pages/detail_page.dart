import 'package:flutter/material.dart';
import 'package:sabak_30_news_app_4_request/features/data/models/top_news.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share_plus/share_plus.dart';

class DetailPage extends StatelessWidget {
  const DetailPage(
      {super.key,
      required this.urlToImage,
      required this.title,
      required this.description,
      required this.publishedAt,
      required this.author,
      required this.article});
  final String urlToImage;
  final String title;
  final String description;
  final DateTime publishedAt;
  final String author;
  final Article article;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Page'),
        actions: article.url.isNotEmpty
            ? [
                IconButton(
                  onPressed: () {
                    Share.share(article.url);
                  },
                  icon: Icon(Icons.share),
                )
              ]
            : null,
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
            ElevatedButton(
              onPressed: () async {
                if (!await launchUrl(Uri.parse(article.url))) {
                  throw Exception('Could not launch');
                }
              },
              child: const Text('Go to site'),
            ),
          ],
        ),
      ),
    );
  }
}
