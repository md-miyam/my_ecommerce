import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

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
          color: Color(0xFFd1d1d1),
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
          child: GNav(
            tabShadow: [BoxShadow(color: Colors.black12, blurRadius: 18)],
            // curve: Curves.ease,
            duration: Duration(milliseconds: 200),
            activeColor: Colors.black,
            tabBackgroundColor: Color(0xffeeeeee),
            padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
            tabBorderRadius: 100,
            gap: 6,
            selectedIndex: controller.currentIndex.value,
            onTabChange: controller.changeIndex,
            tabs: [
              buildGButton(
                text: "Home",
                icon: "assets/icons/home_icon.png",
                iconPadding: 14,
              ),
              buildGButton(
                text: "Search",
                icon: "assets/icons/search_icon.png",
                iconPadding: 12,
              ),
              // buildGButton(text: "Saved", icon: "assets/icons/love_icon.png",iconPadding: 10),
              buildGButton(
                text: "Cart",
                icon: "assets/icons/cart_icon.png",
                iconPadding: 10,
              ),
              buildGButton(
                text: "Account",
                icon: "assets/icons/person _icon.png",
                iconPadding: 12,
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
      icon: Icons.circle,
      leading: Container(
        height: 45.h,
        width: 45.w,
        decoration: BoxDecoration(color: Colors.black, shape: BoxShape.circle),
        child: Padding(
          padding: EdgeInsets.all(iconPadding.sp),
          child: Image.asset(icon, color: Colors.white),
        ),
      ),
    );
  }
}
