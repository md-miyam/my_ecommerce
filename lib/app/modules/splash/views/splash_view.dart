import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:my_ecommerce/app/data/app_colors.dart';
import '../../../data/image_path.dart';
import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});


  @override
  Widget build(BuildContext context) {
    final SplashController controller = Get.put(SplashController());
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      body: SafeArea(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(ImagePath.splashIcon, height: 134.h, width: 133.w),
              CircularProgressIndicator(
                color:AppColors.whiteColor,
                strokeWidth: 6,
                strokeCap: StrokeCap.round,
                padding: EdgeInsets.only(top:200),

              ),
            ],
          ),
        ),
      ),
    );
  }
}
