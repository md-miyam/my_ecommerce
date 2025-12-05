import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../data/app_colors.dart';
import '../../../data/app_text_styles.dart';
import '../../../data/icon_path.dart';
import '../../all_common_widgets/custom_button.dart';
import '../../all_common_widgets/custom_divider.dart';
import '../../all_common_widgets/custom_text_field.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

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
                Text(
                  'Login to your account',
                  style: AppTextStyles.featherBold28,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  "It’s great to see you again.",
                  style: AppTextStyles.regular16,
                ),
                SizedBox(height: 24.h),
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
                SizedBox(height: 10.h),
                Row(
                  children: [
                    Text(
                      "Forgot your password?",
                      style: AppTextStyles.regular14,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        "Reset your password",
                        style: AppTextStyles.bold14,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 24.h),
                CustomButton(text: "Login", color: AppColors.hintTextColor),
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
                SizedBox(height: 16.h),
                CustomButton(
                  text: "Sign Up with Facebook ",
                  textColor: AppColors.whiteColor,
                  prefixIcon: IconPath.facebookLogo,
                  color: AppColors.blueColor,
                ),
                SizedBox(height: 100.h),
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
