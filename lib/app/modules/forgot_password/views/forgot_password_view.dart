import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:my_ecommerce/app/modules/all_common_widgets/custom_app_bar.dart';
import 'package:my_ecommerce/app/modules/all_common_widgets/custom_button.dart';
import '../../../data/app_text_styles.dart';
import '../../all_common_widgets/custom_text_field.dart';
import '../controllers/forgot_password_controller.dart';

class ForgotPasswordView extends GetView<ForgotPasswordController> {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding:EdgeInsets.symmetric(horizontal: 14.sp, vertical: 6.sp),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Forgot password',
                        style: AppTextStyles.featherBold28,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        "Enter your email for the verification process. We will send 4 digits code to your email.",
                        style: AppTextStyles.regular16,
                      ),
                      SizedBox(height: 24.h),
                      CustomTextField(
                        topHintText: "Email",
                        hintText: "cody.fisher45@example.com",
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 16.h),
                    child: CustomButton(text: "Send Code"),
                  ),

                ],
              ),
            ),
          )
        ],
      )
    );
  }
}
