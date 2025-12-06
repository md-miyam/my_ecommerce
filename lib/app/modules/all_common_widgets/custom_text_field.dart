import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_ecommerce/app/data/app_colors.dart';
import 'package:my_ecommerce/app/data/app_text_styles.dart';

class CustomTextField extends StatelessWidget {
  final String topHintText;
  final String? hintText;
  final IconData? icon;
  final TextEditingController? controller;
  final String? Function(String?)?validation;

  const CustomTextField({super.key, required this.topHintText, this.hintText, this.icon, this.controller, this.validation});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(topHintText, style: AppTextStyles.medium16),
        SizedBox(height: 2.h),
        TextFormField(
          controller:controller ,
          validator:validation ,
          cursorColor: AppColors.blackColor,
          cursorHeight: 20,
          cursorWidth: 1.6,
          decoration: InputDecoration(hintText: hintText,
            suffixIcon: icon != null ? Icon(icon) : null,),
        ),
      ],
    );
  }
}
