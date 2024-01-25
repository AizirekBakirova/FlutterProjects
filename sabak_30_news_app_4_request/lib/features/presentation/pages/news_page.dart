import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sabak_30_news_app_4_request/constants/app_colors.dart';
import 'package:sabak_30_news_app_4_request/constants/app_text_style.dart';
import 'package:sabak_30_news_app_4_request/features/data/fetch_data/fetch_top_news.dart';
import 'package:sabak_30_news_app_4_request/features/data/models/country_model.dart';
import 'package:sabak_30_news_app_4_request/features/data/models/flag_models.dart';
import 'package:sabak_30_news_app_4_request/features/data/models/top_news.dart';
import 'package:sabak_30_news_app_4_request/features/presentation/pages/detail_page.dart';
import 'package:country_flags/country_flags.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  TopNews? topnews;
  Future<void> fetchTopNews([String? domain]) async {
    topnews = null;
    setState(() {});
    topnews = await FetchTopNews().fetchTopNews(domain);
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    fetchTopNews();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Row(
            children: [
              Text('News', style: TextStyle(color: Colors.black)),
              Text('Aggregator',
                  style: TextStyle(
                      color: AppColors.deepPurple,
                      fontWeight: FontWeight.bold)),
            ],
          ),
          actions: [
            PopupMenuButton<Countries>(
              onSelected: (Countries country) async {
                await fetchTopNews(country.domain);
              },
              itemBuilder: (context) => countriesSet
                  .map(
                    (e) => PopupMenuItem<Countries>(
                      value: e,
                      child: Row(
                        children: [
                          Icon(
                            Icons.newspaper,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            e.name,
                            style: const TextStyle(
                                fontSize: 20, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  )
                  .toList(),
              offset: const Offset(0, 100),
              color: AppColors.deepPurple,
              elevation: 2,
            )
          ],
        ),
        body: topnews == null
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(

                // physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: topnews!.articles.length,
                itemBuilder: (context, index) {
                  final news = topnews!.articles[index];
                  return InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailPage(
                                  urlToImage: news.urlToImage ?? 'Empty Image',
                                  title: news.title,
                                  description: news.description ?? 'Empty Text',
                                  publishedAt: news.publishedAt,
                                  author: news.author ?? 'Empty',
                                  article: news,
                                ))),
                    child: Container(
                      margin: const EdgeInsets.only(
                          left: 20, right: 20, bottom: 10),
                      child: Row(
                        children: [
                          // text container
                          Expanded(
                            // ignore: avoid_unnecessary_containers
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        DateFormat('EEEE dd /')
                                            .add_jm()
                                            .format(news.publishedAt),
                                        style: const TextStyle(
                                            color: AppColors.deepPurple,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    news.title,
                                    style: AppTextStyle.newsStyle,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      const Text(
                                        '81.4K views',
                                        style: AppTextStyle.commentsStyle,
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Container(
                                        margin:
                                            const EdgeInsets.only(bottom: 5),
                                        child: const Text(
                                          '.',
                                          style: AppTextStyle.commentsStyle,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      const Text(
                                        '39 comments',
                                        style: AppTextStyle.commentsStyle,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          //image container
                          SizedBox(
                            width: 130,
                            height: 130,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: CachedNetworkImage(
                                imageUrl: news.urlToImage ??
                                    'https://media.istockphoto.com/id/1311148884/vector/abstract-globe-background.jpg?s=612x612&w=0&k=20&c=9rVQfrUGNtR5Q0ygmuQ9jviVUfrnYHUHcfiwaH5-WFE=',
                                placeholder: (context, url) =>
                                    const CircularProgressIndicator(),
                                errorWidget: (context, url, error) =>
                                    const Icon(Icons.error),
                                fit: BoxFit.cover,
                              ),
                            ),
                          )

                          // )
                        ],
                      ),
                    ),
                  );
                }),
        floatingActionButton: FloatingActionButton(
          backgroundColor: AppColors.deepPurple,
          onPressed: () {},
          child: const Icon(
            Icons.search,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
