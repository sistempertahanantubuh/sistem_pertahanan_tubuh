import 'package:get/get.dart';

import '../controllers/refrensi_controller.dart';

class RefrensiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RefrensiController>(
      () => RefrensiController(),
    );
  }
}
