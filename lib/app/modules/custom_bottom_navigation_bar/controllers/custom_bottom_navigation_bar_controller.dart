import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:my_ecommerce/app/modules/home/views/home_view.dart';

class CustomBottomNavigationBarController extends GetxController {
  RxInt currentIndex = 0.obs;

  final page = [HomeView(), Container(), Container(), Container(), Container()];

  void changeIndex(int index) {
    currentIndex.value = index;
  }
}
