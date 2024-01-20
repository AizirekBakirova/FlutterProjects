import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sabak_29_news_app_3_request/constants/app_colors.dart';
import 'package:sabak_29_news_app_3_request/constants/app_text_style.dart';
import 'package:sabak_29_news_app_3_request/features/data/fetch_data/fetch_top_news.dart';
import 'package:sabak_29_news_app_3_request/features/data/models/top_news.dart';
import 'package:sabak_29_news_app_3_request/features/data/title_models.dart';
import 'package:sabak_29_news_app_3_request/features/presentation/pages/detail_page.dart';

import '../../data/news_model.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  TopNews? topnews;
  Future<void> fetchTopNews() async {
    topnews = await FetchTopNews().fetchTopNews();
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
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ))
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
                                  content: news.content ?? 'Empty',
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
                                      // Text(
                                      //   titleList[index].titleText,
                                      //   style: const TextStyle(
                                      //       color: AppColors.deepPurple,
                                      //       fontWeight: FontWeight.bold,
                                      //       fontSize: 15),
                                      // )
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
                          Container(
                            width: 130,
                            height: 130,

                            // decoration: BoxDecoration(
                            //     borderRadius: BorderRadius.circular(20),
                            //     color: Colors.red,
                            // image: DecorationImage(
                            //     fit: BoxFit.cover,
                            // child: Image.network(
                            //   news.urlToImage ?? '',
                            //   fit: BoxFit.cover,
                            // ),

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: CachedNetworkImage(
                                imageUrl: '${news.urlToImage}',
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

                  // return Padding(
                  //   padding: const EdgeInsets.symmetric(vertical: 5),
                  //   child: Card(
                  //     color: Colors.white,
                  //     child: Column(
                  //       children: [
                  //         Row(
                  //           children: [
                  //             Expanded(
                  //               child: Padding(
                  //                 padding: const EdgeInsets.all(8.0),
                  //                 child: Text(
                  //                   news.title,
                  //                   style: AppTextStyle.newsStyle,
                  //                 ),
                  //               ),
                  //             ),
                  //             SizedBox(
                  //               width: 190,
                  //               height: 190,
                  //               child: Image.network(
                  //                 news.urlToImage ?? '',
                  //                 fit: BoxFit.cover,
                  //               ),
                  //             ),
                  //           ],
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // );
                }),
        // floatingActionButton: FloatingActionButton(
        //   backgroundColor: AppColors.deepPurple,
        //   onPressed: () {},
        //   child: const Icon(Icons.search),
        // ),
      ),
    );
  }
}
