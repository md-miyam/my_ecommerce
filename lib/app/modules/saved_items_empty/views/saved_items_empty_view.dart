import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:my_ecommerce/app/data/app_text_styles.dart';
import 'package:my_ecommerce/app/data/icon_path.dart';
import 'package:my_ecommerce/app/data/image_path.dart';

import '../controllers/saved_items_empty_controller.dart';

class SavedItemsEmptyView extends GetView<SavedItemsEmptyController> {
  const SavedItemsEmptyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(24.sp),
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: Image.asset(IconPath.loveIcon, height: 64.h, width: 64.w)),
              SizedBox(height: 16.h,),
              Text("No Saved Items!",style: AppTextStyles.bold20,),
              Text("You don’t have any saved items.",style: AppTextStyles.regular16,),
              Text("Go to home and add some.",style: AppTextStyles.regular16,),
            ],
          ),
        ),
      ),
    );
  }
}
