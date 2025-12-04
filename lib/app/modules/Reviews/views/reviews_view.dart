import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:my_ecommerce/app/data/app_colors.dart';
import 'package:my_ecommerce/app/data/app_text_styles.dart';
import 'package:my_ecommerce/app/data/image_path.dart';
import '../controllers/reviews_controller.dart';
import '../widget/custom_linearprogress_indicator.dart';
import '../widget/customstar4.dart';

class ReviewsView extends GetView<ReviewsController> {
  const ReviewsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 6.h),
          child: Column(
            children: [
              Row(
                children: [
                  Text("4.0", style: AppTextStyles.bold64),
                  SizedBox(width: 6.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomStar4(height: 22,image: ImagePath.StarGrayIamge,),
                      Text("1034 Ratings", style: AppTextStyles.regular16),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  CustomStar4(height: 16,image:ImagePath.StarImage,),SizedBox(width: 5.w,),
                  Expanded(
                    child: CustomLinearProgressIndicator(value: .8,),
                  ),
                ],
              ), SizedBox(height: 12.h,),
              Row(
                children: [
                  CustomStar4(height: 16,image:ImagePath.StarGrayIamge,),SizedBox(width: 5.w,),
                  Expanded(
                    child: CustomLinearProgressIndicator(value: .6,),
                  ),
                ],
              ),SizedBox(height: 12.h,),
              Padding(
                padding:EdgeInsets.only(left: 2.w),
                child: Row(children: [
                  Image.asset(ImagePath.StarImage,height: 16.h,),SizedBox(width: 4.w,),
                  Image.asset(ImagePath.StarImage,height: 16.h,),SizedBox(width: 4.w,),
                  Image.asset(ImagePath.StarImage,height: 16.h,),SizedBox(width: 4.w,),
                  Image.asset(ImagePath.StarGrayIamge,height: 16.h,),SizedBox(width: 4.w,),
                  Image.asset(ImagePath.StarGrayIamge,height: 16.h,),SizedBox(width: 4.w,),
                  Expanded(child: CustomLinearProgressIndicator(value: .4))
                ],),
              ),SizedBox(height: 12.h,),
              Padding(
                padding:EdgeInsets.only(left: 2.w),
                child: Row(children: [
                  Image.asset(ImagePath.StarImage,height: 16.h,),SizedBox(width: 4.w,),
                  Image.asset(ImagePath.StarImage,height: 16.h,),SizedBox(width: 4.w,),
                  Image.asset(ImagePath.StarGrayIamge,height: 16.h,),SizedBox(width: 4.w,),
                  Image.asset(ImagePath.StarGrayIamge,height: 16.h,),SizedBox(width: 4.w,),
                  Image.asset(ImagePath.StarGrayIamge,height: 16.h,),SizedBox(width: 4.w,),
                  Expanded(child: CustomLinearProgressIndicator(value: .2))
                ],),
              ),SizedBox(height: 12.h,),
              Padding(
                padding:EdgeInsets.only(left: 2.w),
                child: Row(children: [
                  Image.asset(ImagePath.StarImage,height: 16.h,),SizedBox(width: 4.w,),
                  Image.asset(ImagePath.StarGrayIamge,height: 16.h,),SizedBox(width: 4.w,),
                  Image.asset(ImagePath.StarGrayIamge,height: 16.h,),SizedBox(width: 4.w,),
                  Image.asset(ImagePath.StarGrayIamge,height: 16.h,),SizedBox(width: 4.w,),
                  Image.asset(ImagePath.StarGrayIamge,height: 16.h,),SizedBox(width: 4.w,),
                  Expanded(child: CustomLinearProgressIndicator(value: .1))
                ],),
              ),SizedBox(height: 25.h,),
              Divider(height: 5.w,),
              SizedBox(height: 16.h,),
              Row(children: [
                Text("45 Reviews",style: AppTextStyles.bold16,),
                // DropdownButton(items: , onChanged: (){})
              ],
              )



            ],
          ),
        ),
      ),
    );
  }
}

