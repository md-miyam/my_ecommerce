import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:my_ecommerce/app/data/app_colors.dart';
import '../../data/icon_path.dart';

class CustomArrowBackButton extends StatelessWidget {
  const CustomArrowBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.sp),
      child: InkWell(
        onTap: (){
          Get.back();
        },
        child: CircleAvatar(
          backgroundColor: AppColors.blackColor,
          child: Padding(
            padding: EdgeInsets.all(10.sp),
            child: Image.asset(IconPath.arrowBack),
          ),
        ),
      ),
    );
  }
}
