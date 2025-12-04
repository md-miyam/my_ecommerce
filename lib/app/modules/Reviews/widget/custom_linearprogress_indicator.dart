import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../data/app_colors.dart';

class CustomLinearProgressIndicator extends StatelessWidget {
  final double value;
  const CustomLinearProgressIndicator({
    super.key, required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(borderRadius: BorderRadiusGeometry.circular(50),
      child: LinearProgressIndicator(
        value: value,
        color: AppColors.blackColor,
        backgroundColor: AppColors.hintTextColor,
        minHeight: 6.h,
        borderRadius: BorderRadiusGeometry.circular(50),
      ),
    );
  }
}
