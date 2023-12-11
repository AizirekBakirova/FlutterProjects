import 'package:flutter/material.dart';
import 'package:sabak_19_bmi_prodoljenie_logiki/features/presentation/constants/app_text_styles.dart';

class MaleFemaleCard extends StatelessWidget {
  const MaleFemaleCard({
    super.key,
    this.icon,
    this.text,
    required this.maleFemale,
  });
  final IconData? icon;
  final String? text;
  final bool maleFemale;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 169,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.black,
      ),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Icon(
          icon,
          color: maleFemale ? Colors.grey : Color(0xffff0f65),
          size: 70,
        ),
        Text(
          text ?? '',
          style: AppTextStyles.appTextStyle,
        ),
      ]),
    );
  }
}
