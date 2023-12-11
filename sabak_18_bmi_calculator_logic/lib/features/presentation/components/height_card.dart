import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sabak_18_bmi_calculator_logic/features/presentation/constants/app_text_styles.dart';

class HeightCard extends StatelessWidget {
  const HeightCard(
      {super.key,
      required this.text,
      required this.san,
      required this.smText,
      required this.height,
      this.onChanged});
  final String text;
  final int san;
  final String smText;
  final int height;
  final void Function(double)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 169,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.black,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text.toUpperCase(),
            style: AppTextStyles.appTextStyle,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                '$san',
                style: AppTextStyles.smTextStyle,
              ),
              // Text(san.toString()),
              const SizedBox(
                width: 5,
              ),
              Text(
                smText,
                style: AppTextStyles.appTextStyle,
              )
            ],
          ),
          SizedBox(
            width: double.maxFinite,
            child: CupertinoSlider(
              min: 0.0,
              max: 200.0,
              value: height.toDouble(),
              onChanged: onChanged,
            ),
          )
        ],
      ),
    );
  }
}
