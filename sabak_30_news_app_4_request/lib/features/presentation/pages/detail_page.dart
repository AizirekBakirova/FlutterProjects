import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sabak_30_news_app_4_request/constants/app_colors.dart';
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
                  icon: const Icon(
                    Icons.share,
                  ),
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
              child: CachedNetworkImage(
                imageUrl: article.urlToImage ??
                    'https://media.istockphoto.com/id/1311148884/vector/abstract-globe-background.jpg?s=612x612&w=0&k=20&c=9rVQfrUGNtR5Q0ygmuQ9jviVUfrnYHUHcfiwaH5-WFE=',
                placeholder: (context, url) =>
                    const CircularProgressIndicator(),
                errorWidget: (context, url, error) => const Icon(Icons.error),
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
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
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 30,
              child: ElevatedButton(
                onPressed: () async {
                  if (!await launchUrl(Uri.parse(article.url))) {
                    throw Exception('Could not launch');
                  }
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.deepPurple),
                child: const Text(
                  'See more details',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
