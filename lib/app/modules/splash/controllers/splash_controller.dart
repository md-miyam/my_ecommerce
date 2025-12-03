import 'package:get/get.dart';
import 'dart:async';

import 'package:my_ecommerce/app/modules/onboarding/views/onboarding_view.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Timer(const Duration(seconds: 3), () {
      Get.off(() => OnboardingView());
    });
  }
}
