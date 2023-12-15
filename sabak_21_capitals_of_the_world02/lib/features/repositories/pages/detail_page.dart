import 'package:flutter/material.dart';
import 'package:sabak_20_capitals_of_the_world1/features/repositories/theme/text_style.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('22', style: AppTextStyle.numberFalseStyle),
            Text('|'),
            Text(
              '10',
              style: AppTextStyle.numberTrueStyle,
            )
          ],
        ),
        actions: [const Icon(Icons.more_vert)],
      ),
      body: Column(
        children: [
          Image.asset(
            image,
            width: 160,
          )
        ],
      ),
    );
  }
}
