import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../data/app_colors.dart';
import '../../data/app_text_styles.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final IconData? icon;
  final String? image;

  const CustomButton({super.key, required this.text, this.icon, this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54.h,
      width: 340.w,
      decoration: BoxDecoration(
        color: AppColors.blackColor,
        borderRadius: BorderRadiusGeometry.circular(10.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (image != null) Image.asset(image!, width: 24, height: 24),
          if (image != null) SizedBox(width: 10.w),
          Text(
            text,
            style: AppTextStyles.medium16.copyWith(color: AppColors.whiteColor),
          ),
          if (icon != null) SizedBox(width: 10.w),
          if (icon != null)
            Icon(icon, color: AppColors.whiteColor, size: 24.sp),
        ],
      ),
    );
  }
}
