import 'package:get/get.dart';

import '../controllers/varification_cord_controller.dart';

class VarificationCordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VarificationCordController>(
      () => VarificationCordController(),
    );
  }
}
