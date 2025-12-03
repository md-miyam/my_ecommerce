import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:my_ecommerce/app/data/app_text_styles.dart';
import '../controllers/sign_up_controller.dart';

class SignUpView extends GetView<SignUpController> {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(24.sp),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Create an account', style: AppTextStyles.bold32),
              Text(
                "Let’s create your account.",
                style: AppTextStyles.regular16,
              ),
              SizedBox(height: 24.h),
              Text("Full Name", style: AppTextStyles.medium16),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter your full name",
                  suffix: Icon(
                    Icons.remove_red_eye_outlined,
                  ),
                ),
              ),
              SizedBox(height: 16.h,),
              Text("Email",style: AppTextStyles.medium16,),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter your full name",
                  suffix: Icon(
                    Icons.remove_red_eye_outlined,
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
