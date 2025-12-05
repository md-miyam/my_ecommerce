import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:my_ecommerce/app/data/app_colors.dart';
import 'package:my_ecommerce/app/data/app_text_styles.dart';
import 'package:my_ecommerce/app/data/icon_path.dart';
import 'package:my_ecommerce/app/data/image_path.dart';
import 'package:my_ecommerce/app/modules/all_common_widgets/custom_app_bar.dart';
import 'package:my_ecommerce/app/modules/all_common_widgets/custom_button.dart';
import 'package:my_ecommerce/app/modules/all_common_widgets/custom_notification_button.dart';
import '../controllers/details_controller.dart';

class DetailsView extends GetView<DetailsController> {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Details",
        actions: [CustomNotificationButton()],
      ),
      bottomNavigationBar: Container(
        height: Get.height *.09,
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          border: Border.all(color: AppColors.dividerColor),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(child: Text("Price", style: AppTextStyles.regular16)),
                  Flexible(child: Text("\$1,190", style: AppTextStyles.bold20.copyWith(),maxLines: 1,overflow: TextOverflow.ellipsis,)),
                ],
              ),
             SizedBox(width: 30.w,),
              CustomButton(
                text: "Add to Cart",
                prefixIcon: IconPath.bagIcon,
                width: Get.width *.450.w,
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 6.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Center(
                      child: Container(
                        height: 368.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusGeometry.circular(10),
                        ),
                        child: CircleAvatar(
                          child: Image.asset(ImagePath.DetailsImage),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 280.w,
                      bottom: 300.h,
                      child: Container(
                        height: 48.h,
                        width: 48.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusGeometry.circular(12),
                          color: AppColors.whiteColor,
                        ),
                        child: Icon(Icons.favorite_border),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.h),
                Text("Regular Fit Slogan", style: AppTextStyles.featherBold24),
                InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Icon(Icons.star, color: AppColors.starColor),
                      Text("4.0/5 (45 reviews)", style: AppTextStyles.medium16),
                    ],
                  ),
                ),
                SizedBox(height: 13.h),
                Text(
                  "The name says it all, the right size slightly snugs the body leaving enough room for comfort in the sleeves and waist.",
                  style: AppTextStyles.regular16,
                ),
                SizedBox(height: 12.h),
                Text("Choose size", style: AppTextStyles.featherBold20),
                SizedBox(height: 12.h),
                Row(
                  children: [
                    CustomButton(
                      text: "S",
                      height: 50.h,
                      width: 50.w,
                      borderColor: AppColors.detailsSize,
                      borderRadius: 10,
                      color: AppColors.whiteColor,
                      textColor: AppColors.blackColor,
                      onTap: () {},
                    ),
                    SizedBox(width: 10.w),
                    CustomButton(
                      text: "M",
                      height: 50.h,
                      width: 50.w,
                      borderColor: AppColors.detailsSize,
                      borderRadius: 10,
                      color: AppColors.whiteColor,
                      textColor: AppColors.blackColor,
                      onTap: () {},
                    ),
                    SizedBox(width: 10.w),
                    CustomButton(
                      text: "L",
                      height: 50.h,
                      width: 50.w,
                      borderColor: AppColors.detailsSize,
                      borderRadius: 10,
                      color: AppColors.whiteColor,
                      textColor: AppColors.blackColor,
                      onTap: () {},
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
