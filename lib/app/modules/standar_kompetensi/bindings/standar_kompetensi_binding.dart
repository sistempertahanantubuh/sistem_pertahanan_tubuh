import 'package:get/get.dart';

import '../controllers/standar_kompetensi_controller.dart';

class StandarKompetensiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StandarKompetensiController>(
      () => StandarKompetensiController(),
    );
  }
}
