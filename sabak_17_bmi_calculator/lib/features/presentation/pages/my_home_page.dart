import 'package:flutter/material.dart';
import 'package:sabak_17_bmi_calculator/features/presentation/components/bmi_calculator.dart';
import 'package:sabak_17_bmi_calculator/features/presentation/components/calculator_container.dart';
import 'package:sabak_17_bmi_calculator/features/presentation/pages/constants/app_colors.dart';
import 'package:sabak_17_bmi_calculator/features/presentation/pages/constants/app_sized_box.dart';
import 'package:sabak_17_bmi_calculator/features/presentation/pages/constants/app_text_styles.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBgc,
      appBar: myAppBar(),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 21, vertical: 39),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BmiContainer(),
                BmiContainer(),
              ],
            ),
            AppSize.h18,
            BmiContainer(),
            AppSize.h18,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BmiContainer(),
                BmiContainer(),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: CalculatorContainer(),
    );
  }

  AppBar myAppBar() {
    return AppBar(
      backgroundColor: AppColors.appBgc,
      centerTitle: true,
      title: const Text(
        'BMI CALCULATOR',
        style: AppTextStyles.bmiTextStyle,
      ),
    );
  }
}
