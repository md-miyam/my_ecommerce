import 'package:get/get.dart';

import '../controllers/saved_items_empty_controller.dart';

class SavedItemsEmptyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SavedItemsEmptyController>(
      () => SavedItemsEmptyController(),
    );
  }
}
