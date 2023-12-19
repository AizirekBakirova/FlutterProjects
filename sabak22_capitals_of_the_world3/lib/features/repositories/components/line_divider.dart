import 'package:flutter/material.dart';
import 'package:sabak22_capitals_of_the_world3/features/repositories/theme/colors.dart';

class LineDivider extends StatelessWidget {
  const LineDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: AppColors.black,
      indent: 10,
      endIndent: 10,
    );
  }
}
