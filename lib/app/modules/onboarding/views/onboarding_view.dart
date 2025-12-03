import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:my_ecommerce/app/data/app_colors.dart';
import 'package:my_ecommerce/app/data/image_path.dart';
import '../../../routes/app_pages.dart';
import '../../all_common_widgets/custom_button.dart';
import '../controllers/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 100.h,
        decoration: BoxDecoration(color: AppColors.whiteColor),
        child: Center(
          child: InkWell(
            onTap: () {
              Get.offAllNamed(Routes.SIGN_UP);
            },
            child: CustomButton(text: 'Get Started', icon: Icons.arrow_forward),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 24.w),
                  child: Text(
                    "Define yourself in your unique way.",
                    style: TextStyle(
                      fontSize: 64,
                      fontWeight: FontWeight.w600,
                      height: 0.9,
                    ),
                  ),
                ),
                Positioned(
                  top: 25,
                  right: 0,
                  left: 0,
                  child: Image.asset(ImagePath.person),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
