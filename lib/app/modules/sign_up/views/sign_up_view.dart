import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:my_ecommerce/app/data/app_colors.dart';
import 'package:my_ecommerce/app/data/app_text_styles.dart';
import 'package:my_ecommerce/app/data/icon_path.dart';
import 'package:my_ecommerce/app/modules/all_common_widgets/custom_button.dart';
import 'package:my_ecommerce/app/modules/all_common_widgets/custom_divider.dart';
import '../../all_common_widgets/custom_app_bar.dart';
import '../../all_common_widgets/custom_text_field.dart';
import '../controllers/sign_up_controller.dart';

class SignUpView extends GetView<SignUpController> {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.sp, vertical: 6.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Create an account', style: AppTextStyles.featherBold32),
                Text(
                  "Let’s create your account.",
                  style: AppTextStyles.regular16,
                ),
                SizedBox(height: 15.h),
                CustomTextField(
                  topHintText: "Full Name",
                  hintText: "Enter your full name",

                ),
                SizedBox(height: 15.h),
                CustomTextField(
                  topHintText: "Email",
                  hintText: "Enter your email address",
                ),
                SizedBox(height: 15.h),
                CustomTextField(
                  topHintText: "Password",
                  hintText: "Enter your password",
                  icon: Icons.remove_red_eye_outlined,
                ),
                SizedBox(height: 15.h),
                RichText(
                  text: TextSpan(
                    text: "By signing up you agree to our",
                    style: AppTextStyles.regular14.copyWith(
                      color: AppColors.blackColor,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: " Terms, Privacy Policy, ",
                        style: AppTextStyles.bold14.copyWith(
                          color: AppColors.blackColor,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      TextSpan(
                        text: "and ",
                        style: AppTextStyles.regular14.copyWith(
                          color: AppColors.blackColor,
                        ),
                      ),
                      TextSpan(
                        text: " Cookie Use ",
                        style: AppTextStyles.bold14.copyWith(
                          color: AppColors.blackColor,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 24.h),
                CustomButton(
                  text: "Create an Account",
                  color: AppColors.hintTextColor,
                ),
                SizedBox(height: 24.h),
                Row(
                  children: [
                    Flexible(child: CustomDivider()),
                    SizedBox(width: 5.w),
                    Text("Or"),
                    SizedBox(width: 5.w),
                    Flexible(child: CustomDivider()),
                  ],
                ),
                SizedBox(height: 24.h),
                CustomButton(
                  text: "Sign Up with Google",
                  textColor: AppColors.blackColor,
                  prefixIcon: IconPath.googleIcon,
                  color: AppColors.whiteColor,
                  borderColor: AppColors.bordarColor,
                ),
                SizedBox(height: 24.h),
                CustomButton(
                  text: "Sign Up with Facebook ",
                  textColor: AppColors.whiteColor,
                  prefixIcon: IconPath.facebookLogo,
                  color: AppColors.blueColor,
                ),
                SizedBox(height: 24.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(
                      flex: 2,
                      child: Text(
                        "Already have an account? ",
                        style: AppTextStyles.regular16,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: GestureDetector(
                        onTap: () {},
                        child: Text(
                          " Log In",
                          style: AppTextStyles.bold16,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
