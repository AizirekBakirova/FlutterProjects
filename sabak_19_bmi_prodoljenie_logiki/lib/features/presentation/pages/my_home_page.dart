import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:sabak_19_bmi_prodoljenie_logiki/features/demo/show_result.dart';
import 'package:sabak_19_bmi_prodoljenie_logiki/features/presentation/components/age_card.dart';
import 'package:sabak_19_bmi_prodoljenie_logiki/features/presentation/components/calculator_container.dart';
import 'package:sabak_19_bmi_prodoljenie_logiki/features/presentation/components/height_card.dart';
import 'package:sabak_19_bmi_prodoljenie_logiki/features/presentation/components/male_female_card.dart';
import 'package:sabak_19_bmi_prodoljenie_logiki/features/presentation/components/weight_card.dart';
import 'package:sabak_19_bmi_prodoljenie_logiki/features/presentation/constants/app_colors.dart';
import 'package:sabak_19_bmi_prodoljenie_logiki/features/presentation/constants/app_sized_box.dart';
import 'package:sabak_19_bmi_prodoljenie_logiki/features/presentation/constants/app_text_styles.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int height = 180;
  bool maleFemale = false;
  int weight = 60;
  int age = 28;
  bool weightCount = false;
  bool ageCount = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBgc,
      appBar: appBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 21, vertical: 39),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      maleFemale = false;
                    });
                  },
                  child: MaleFemaleCard(
                    icon: Icons.male,
                    text: 'MALE',
                    maleFemale: maleFemale,
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      maleFemale = true;
                    });
                  },
                  child: MaleFemaleCard(
                    icon: Icons.female,
                    text: 'FEMALE',
                    maleFemale: !maleFemale,
                  ),
                ),
              ],
            ),
            AppSize.h18,
            HeightCard(
              text: 'HEIGHT',
              san: height,
              smText: 'cm',
              height: height,
              onChanged: (value) {
                setState(() {
                  height = value.toInt();
                });
              },
            ),
            AppSize.h18,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                WeightAgeCard(
                  text: 'WEIGHT',
                  san: weight,
                  remove: Icons.remove_circle,
                  add: Icons.add_circle,
                  decrement: () {
                    setState(() {
                      weight--;
                      weightCount = false;
                    });
                  },
                  increment: () {
                    setState(() {
                      weight++;
                      weightCount = true;
                    });
                  },
                  weightCount: weightCount,
                ),
                AgeCard(
                  text: 'AGE',
                  san: age,
                  remove: Icons.remove_circle,
                  add: Icons.add_circle,
                  decrement: () {
                    setState(() {
                      age--;
                      ageCount = false;
                    });
                  },
                  increment: () {
                    setState(() {
                      age++;
                      ageCount = true;
                    });
                  },
                  ageCount: ageCount,
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: CalculatorContainer(
        onTap: () {
          final bmiResult = weight / math.pow(height / 100, 2);
          if (bmiResult < 18.5) {
            dialogBuilder(context, 'Сиздин салмагыныз аз', bmiResult, 'Арык');
          } else if (bmiResult > 18.5 && bmiResult <= 25) {
            dialogBuilder(
                context, 'Сиздин салмагыныз нормалдуу', bmiResult, 'Нормалдуу');
          } else if (bmiResult > 25 && bmiResult <= 30) {
            dialogBuilder(context, 'Сиздин салмагыныз ашыкча', bmiResult,
                'Ашыкча салмактуу');
          }
        },
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      backgroundColor: AppColors.appBarBgc,
      centerTitle: true,
      title: const Text(
        'BMI CALCULATOR',
        style: AppTextStyles.bmiTextStyle,
      ),
    );
  }
}
