import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:my_ecommerce/app/data/app_text_styles.dart';
import 'package:my_ecommerce/app/data/icon_path.dart';
import 'package:my_ecommerce/app/modules/all_common_widgets/custom_notification_button.dart';
import '../../all_common_widgets/custom_app_bar.dart';
import '../../all_common_widgets/custom_button.dart';
import '../../all_common_widgets/custom_text_field.dart';
import '../controllers/sign_up_controller.dart';

class SignUpView extends GetView<SignUpController> {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "App bar",
        actions: [
          CustomNotificationButton(
            onTap: (){

            },
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 14.sp,vertical: 6.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Create an account', style: AppTextStyles.featherBold24),
              Text(
                "Let’s create your account.",
                style: AppTextStyles.regular16,
              ),
          
              CustomTextField(),
          
          
          
            ],
          ),
        ),
      ),
    );
  }
}


