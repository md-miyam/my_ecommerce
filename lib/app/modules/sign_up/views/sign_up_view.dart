import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:my_ecommerce/app/data/app_text_styles.dart';
import '../../all_common_widgets/custom_textformfield.dart';
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
              CustomTextformfield(text: "Enter your full name"),
              SizedBox(height: 16.h),
              Text("Email", style: AppTextStyles.medium16),
              CustomTextformfield(text: "Enter your email address"),
              SizedBox(height: 16.h),
              Text("Password", style: AppTextStyles.medium16),
              CustomTextformfield(
                text: "Enter your password",
                icon: Icons.remove_red_eye_outlined,
              ),
              SizedBox(height: 16.h),
              RichText(
                text: TextSpan(
                  text: "By signing up you agree to our",
                  style: AppTextStyles.regular14,
                  children: <TextSpan>[
                    TextSpan(text: "Terms, Privacy Policy,",style: AppTextStyles.bold14),
                    TextSpan(text: "and,",style: AppTextStyles.bold14),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
