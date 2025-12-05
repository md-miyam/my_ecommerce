import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:my_ecommerce/app/data/app_colors.dart';
import 'package:my_ecommerce/app/modules/all_common_widgets/custom_app_bar.dart';
import 'package:my_ecommerce/app/modules/all_common_widgets/custom_button.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../../../data/app_text_styles.dart';
import '../controllers/varification_cord_controller.dart';

class VarificationCordView extends GetView<VarificationCordController> {
  const VarificationCordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.sp,
                  vertical: 6.sp,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Enter 4 Digit Code',
                          style: AppTextStyles.featherBold28,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          "Enter 4 digit code that your receive on your email (cody.fisher45@example.com).",
                          style: AppTextStyles.regular16,
                        ),
                        SizedBox(height: 24.h),
                        PinCodeTextField(
                          appContext: context,
                          length: 4,
                          enableActiveFill: true,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          pinTheme: PinTheme(
                            shape: PinCodeFieldShape.box,
                            fieldWidth: 64,
                            fieldHeight: 60,
                            borderRadius: BorderRadius.circular(8),
                            inactiveColor: AppColors.hintTextColor,
                            inactiveFillColor: AppColors.whiteColor,
                            selectedFillColor: AppColors.blueColor,
                            activeFillColor: AppColors.blueColor,
                            errorBorderColor: Colors.red,
                            disabledColor: AppColors.whiteColor,
                          ),
                          onChanged: (value) {},
                        ),
                        SizedBox(height: 16.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Flexible(
                              child: Text(
                                "Email not received? ",
                                style: AppTextStyles.regular16,
                              ),
                            ),
                            Flexible(child: Text("Resend code ", style: AppTextStyles.bold16)),
                          ],
                        ),
                      ],
                    ),
                    CustomButton(text: "Continue"),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
