import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:my_ecommerce/app/data/app_colors.dart';
import 'package:my_ecommerce/app/data/app_text_styles.dart';
import 'package:my_ecommerce/app/data/icon_path.dart';
import '../controllers/custom_bottom_navigation_bar_controller.dart';

class CustomBottomNavigationBarView
    extends GetView<CustomBottomNavigationBarController> {
  const CustomBottomNavigationBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => controller.page[controller.currentIndex.value]),
      bottomNavigationBar: Obx(
        () => Container(
          decoration: BoxDecoration(
            color: Color(0xFFd1d1d1),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(22.sp),
              topRight: Radius.circular(22.sp),
            ),
          ),
          padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 12.h),
          child: GNav(
            tabShadow: [BoxShadow(color: Colors.black12, blurRadius: 18)],
            // curve: Curves.ease,
            duration: Duration(milliseconds: 200),
            activeColor: AppColors.blackColor,
            tabBackgroundColor: Color(0xffeeeeee),
            padding: EdgeInsets.symmetric(horizontal: 1, vertical: 1),
            tabBorderRadius: 100.sp,
            gap: 6.w,
            selectedIndex: controller.currentIndex.value,
            onTabChange: controller.changeIndex,
            tabs: [
              buildGButton(
                text: "Home",
                icon: IconPath.homeIcon,
                iconPadding: 13,
              ),
              buildGButton(
                text: "Saved",
                icon: IconPath.savedIcon,
                iconPadding: 13,
              ),
              buildGButton(
                text: "Cart",
                icon: IconPath.cartIcon,
                iconPadding: 13,
              ),
              buildGButton(
                text: "Account",
                icon: IconPath.profileIcon,
                iconPadding: 13,
              ),
            ],
          ),
        ),
      ),
    );
  }

  GButton buildGButton({
    required String text,
    required String icon,
    required double iconPadding,
  }) {
    return GButton(
      text: '$text ',
      textStyle: AppTextStyles.featherBold14,
      icon: Icons.circle,
      leading: Container(
        height: 45.h,
        width: 45.w,
        decoration: BoxDecoration(color: AppColors.blackColor, shape: BoxShape.circle),
        child: Padding(
          padding: EdgeInsets.all(iconPadding.sp),
          child: Image.asset(icon, color: AppColors.whiteColor),
        ),
      ),
    );
  }
}
