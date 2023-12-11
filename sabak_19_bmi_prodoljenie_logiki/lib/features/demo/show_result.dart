import 'package:flutter/material.dart';
import 'package:sabak_19_bmi_prodoljenie_logiki/features/presentation/constants/app_colors.dart';

Future<void> dialogBuilder(
    BuildContext context, String text, double bmiResult, String text2) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: AppColors.appBarBgc,
          title: const Center(
            child: Text(
              'Жыйынтык:',
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Text(
                  text2,
                  style: const TextStyle(
                      color: Color.fromRGBO(8, 232, 44, 0.80),
                      fontSize: 24,
                      fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Text(
                  bmiResult.toStringAsFixed(2),
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 24,
                ),
                Text(
                  text,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
                style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 90),
                    backgroundColor: Color(0xffff0f65),
                    textStyle: Theme.of(context).textTheme.labelLarge),
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  'Чыгуу',
                  style: TextStyle(color: Colors.white),
                ))
          ],
        );
      });
}
