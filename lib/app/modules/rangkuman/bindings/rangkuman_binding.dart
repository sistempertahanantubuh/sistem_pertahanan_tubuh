import 'package:get/get.dart';

import '../controllers/rangkuman_controller.dart';

class RangkumanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RangkumanController>(
      () => RangkumanController(),
    );
  }
}
