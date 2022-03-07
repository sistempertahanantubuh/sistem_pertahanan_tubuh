import 'package:get/get.dart';
import 'package:sistem_pertahanan_tubuh/app/routes/app_pages.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    Future.delayed(const Duration(seconds: 5))
        .then((value) => Get.offNamed(Routes.LANDING));
    super.onInit();
  }
}
