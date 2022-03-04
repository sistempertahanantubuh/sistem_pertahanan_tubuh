import 'package:get/get.dart';

import '../controllers/peta_konsep_controller.dart';

class PetaKonsepBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PetaKonsepController>(
      () => PetaKonsepController(),
    );
  }
}
