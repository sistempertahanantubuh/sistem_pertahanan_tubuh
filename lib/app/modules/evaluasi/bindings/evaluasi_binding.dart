import 'package:get/get.dart';

import '../controllers/evaluasi_controller.dart';

class EvaluasiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EvaluasiController>(
      () => EvaluasiController(),
    );
  }
}
