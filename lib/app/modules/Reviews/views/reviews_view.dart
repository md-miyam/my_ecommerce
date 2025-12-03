import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:my_ecommerce/app/data/app_text_styles.dart';
import 'package:my_ecommerce/app/data/image_path.dart';

import '../controllers/reviews_controller.dart';
import '../widget/custom_star.dart';

class ReviewsView extends GetView<ReviewsController> {
  const ReviewsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 14),
          child: Column(
            children: [
              Row(
                children: [
                  Text("4.0", style: AppTextStyles.bold64),
                  SizedBox(width: 6.w),
                 Column(crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                   CustomStar(height: 22.h,width: 24.w,),
                   Text("1034 Ratings",style: AppTextStyles.regular16,)
                 ],)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


