import 'package:flutter/material.dart';
import 'package:sabak_19_bmi_prodoljenie_logiki/features/presentation/constants/app_text_styles.dart';

class WeightAgeCard extends StatelessWidget {
  const WeightAgeCard({
    super.key,
    required this.text,
    required this.san,
    required this.add,
    required this.remove,
    required this.decrement,
    required this.increment,
    required this.weightCount,
  });
  final String text;
  final int san;
  final IconData add;
  final IconData remove;
  final void Function() decrement;
  final void Function() increment;
  final bool weightCount;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 169,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.black,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: AppTextStyles.appTextStyle,
          ),
          Text(
            '$san',
            style: AppTextStyles.smTextStyle,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: decrement,
                icon: Icon(remove,
                    size: 45,
                    color: weightCount ? Colors.grey : Color(0xffff0f65)),
              ),
              IconButton(
                  onPressed: increment,
                  icon: Icon(
                    add,
                    size: 45,
                    color: weightCount ? Color(0xffff0f65) : Colors.grey,
                  ))
            ],
          )
        ],
      ),
    );
  }
}
