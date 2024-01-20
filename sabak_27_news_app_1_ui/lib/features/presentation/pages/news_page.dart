import 'package:flutter/material.dart';
import 'package:sabak_27_news_app_1_ui/constants/app_colors.dart';
import 'package:sabak_27_news_app_1_ui/constants/app_text_style.dart';
import 'package:sabak_27_news_app_1_ui/features/data/news_model.dart';
import 'package:sabak_27_news_app_1_ui/features/data/title_models.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: AppColors.deepPurple,
          title: const Text('News Aggregator', style: AppTextStyle.titleStyle),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ))
          ],
        ),
        body: ListView.builder(
            // physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: newsList.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
                child: Row(
                  children: [
                    // text container
                    Expanded(
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                // Text(
                                //   titleList[index].numbers,
                                //   style: TextStyle(
                                //       color: AppColors.deepPurple,
                                //       fontWeight: FontWeight.bold,
                                //       fontSize: 15),
                                // ),
                                // SizedBox(
                                //   width: 10,
                                // ),
                                Text(
                                  titleList[index].titleText,
                                  style: TextStyle(
                                      color: AppColors.deepPurple,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              newsList[index].text,
                              style: AppTextStyle.newsStyle,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  '81.4K views',
                                  style: AppTextStyle.commentsStyle,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 5),
                                  child: Text(
                                    '.',
                                    style: AppTextStyle.commentsStyle,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
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
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.red,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                newsList[index].images,
                              ))),
                    )
                  ],
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
              //                   newsList[index].text,
              //                   style: AppTextStyle.newsStyle,
              //                 ),
              //               ),
              //             ),
              //             SizedBox(
              //               width: 190,
              //               height: 190,
              //               child: Image.asset(
              //                 newsList[index].images,
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
      ),
    );
  }
}
