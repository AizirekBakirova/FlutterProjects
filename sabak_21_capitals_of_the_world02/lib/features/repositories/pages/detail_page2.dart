import 'package:flutter/material.dart';

import 'package:sabak_20_capitals_of_the_world1/features/domain/model/test_europe.dart';
import 'package:sabak_20_capitals_of_the_world1/features/repositories/theme/size.dart';
import 'package:sabak_20_capitals_of_the_world1/features/repositories/theme/text_style.dart';

class DetailPage2 extends StatefulWidget {
  const DetailPage2({
    Key? key,
  }) : super(key: key);

  @override
  State<DetailPage2> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage2> {
  final double sl = 10;
  int indexs = 0;
  int kataJoop = 0;
  int tuuraJoop = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _detailAppBar(kata: kataJoop, tuura: tuuraJoop),
      body: Column(
        children: [
          SizedBox(
            child: SliderTheme(
              child: Slider(
                value: indexs.toDouble(),
                onChanged: (value) {},
                min: 0.0,
                max: 5,
              ),
              data: SliderTheme.of(context).copyWith(
                  trackHeight: 5,
                  activeTrackColor: Color.fromARGB(255, 38, 36, 38),
                  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 0.0)),
            ),
          ),
          Text(
            capitalsList[indexs].flagName,
            style: AppTextStyle.capitalNameStyle,
          ),
          Expanded(child: (Image.asset(capitalsList[indexs].flagImage))),
          AppSize.h20,
          Expanded(
            flex: 1,
            child: GridView.count(
              childAspectRatio: (1 / .6),
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              children: List.generate(
                  4,
                  (index) => InkWell(
                        onTap: () {
                          if (indexs + 1 == capitalsList.length) {
                            showDialog<void>(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  backgroundColor:
                                      Color.fromARGB(255, 38, 36, 38),
                                  title: Text(
                                    'Result:',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Urbanist',
                                        fontSize: 35,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  content: Text(
                                    'Correct answers: ${tuuraJoop} \nIncorrect answers: ${kataJoop}',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Urbanist',
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  actions: <Widget>[
                                    TextButton(
                                      style: TextButton.styleFrom(
                                          textStyle: Theme.of(context)
                                              .textTheme
                                              .labelLarge,
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 50),
                                          backgroundColor: Colors.green),
                                      child: const Text(
                                        'Restart',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Urbanist',
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      onPressed: () {
                                        kataJoop = 0;
                                        tuuraJoop = 0;
                                        indexs = 0;
                                        setState(() {});

                                        Navigator.of(context).pop();
                                      },
                                    ),
                                  ],
                                );
                              },
                            );
                          } else {
                            if (capitalsList[indexs].joop[index].isTrue ==
                                true) {
                              tuuraJoop++;
                            } else {
                              kataJoop++;
                            }

                            indexs++;
                            setState(() {});
                          }
                        },
                        child: Card(
                          color: Color.fromARGB(255, 38, 36, 38),
                          margin: EdgeInsets.all(10),
                          child: Center(
                              child: Text(
                            capitalsList[indexs].joop[index].countriesName,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: 'Urbanist'),
                          )),
                        ),
                      )),
            ),
          )
        ],
      ),
    );
  }

  AppBar _detailAppBar({required int kata, required int tuura}) {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(kata.toString(), style: AppTextStyle.numberFalseStyle),
          Text('|'),
          Text(
            tuura.toString(),
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
