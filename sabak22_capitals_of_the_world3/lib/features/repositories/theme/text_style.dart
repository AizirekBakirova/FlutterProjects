import 'package:flutter/material.dart';
import 'package:sabak22_capitals_of_the_world3/features/repositories/theme/colors.dart';

class AppTextStyle {
  static const titleTextStyle = TextStyle(
      color: AppColors.black,
      fontSize: 14,
      fontWeight: FontWeight.w700,
      fontFamily: 'Urbanist');

  static const numberFalseStyle = TextStyle(
      color: AppColors.red,
      fontWeight: FontWeight.bold,
      fontFamily: 'Urbanist');

  static const numberTrueStyle = TextStyle(
      color: AppColors.green,
      fontWeight: FontWeight.bold,
      fontFamily: 'Urbanist');

  static const capitalNameStyle = TextStyle(
      color: AppColors.black,
      fontWeight: FontWeight.bold,
      fontSize: 24,
      fontFamily: 'Urbanist');
}
