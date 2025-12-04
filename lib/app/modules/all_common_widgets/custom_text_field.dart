import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_ecommerce/app/data/app_colors.dart';
import 'package:my_ecommerce/app/data/app_text_styles.dart';

class CustomTextField extends StatelessWidget {
  final String topHintText;
  final String? hintText;

  const CustomTextField({super.key, required this.topHintText, this.hintText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(topHintText, style: AppTextStyles.medium16),
        SizedBox(height: 2.h),
        TextField(
          cursorColor: AppColors.blackColor,
          cursorHeight: 20,
          cursorWidth: 1.6,
          decoration: InputDecoration(hintText: hintText),
        ),
      ],
    );
  }
}
