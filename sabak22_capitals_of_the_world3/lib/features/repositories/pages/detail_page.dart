import 'package:flutter/material.dart';
import 'package:sabak22_capitals_of_the_world3/features/repositories/theme/text_style.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key, required this.image});
  final String image;
  final double sl = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _detailAppBar(),
      body: Column(
        children: [
          SizedBox(
            child: SliderTheme(
              child: Slider(
                value: sl,
                onChanged: (value) {},
                min: 0.0,
                max: 100.0,
              ),
              data: SliderTheme.of(context).copyWith(
                  trackHeight: 5,
                  activeTrackColor: Colors.indigoAccent,
                  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 0.0)),
            ),
          ),
          Text(
            'Kyrgyzstan',
            style: AppTextStyle.capitalNameStyle,
          ),
          Image.asset(image),
          ChooseCity(),
          ChooseCity(),
          ChooseCity(),
          ChooseCity(),
        ],
      ),
    );
  }

  AppBar _detailAppBar() {
    return AppBar(
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
    );
  }
}

class ChooseCity extends StatelessWidget {
  const ChooseCity({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {},
        child: const SizedBox(
          width: double.infinity,
          height: 50,
          child: Center(child: Text('Bishkek')),
        ),
      ),
    );
  }
}
