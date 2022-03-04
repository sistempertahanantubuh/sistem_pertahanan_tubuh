// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';

import '../modules/evaluasi/bindings/evaluasi_binding.dart';
import '../modules/evaluasi/views/evaluasi_view.dart';
import '../modules/help/bindings/help_binding.dart';
import '../modules/help/views/help_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/landing/bindings/landing_binding.dart';
import '../modules/landing/views/landing_view.dart';
import '../modules/materi/bindings/materi_binding.dart';
import '../modules/materi/views/materi_view.dart';
import '../modules/peta_konsep/bindings/peta_konsep_binding.dart';
import '../modules/peta_konsep/views/peta_konsep_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/rangkuman/bindings/rangkuman_binding.dart';
import '../modules/rangkuman/views/rangkuman_view.dart';
import '../modules/refrensi/bindings/refrensi_binding.dart';
import '../modules/refrensi/views/refrensi_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';
import '../modules/standar_kompetensi/bindings/standar_kompetensi_binding.dart';
import '../modules/standar_kompetensi/views/standar_kompetensi_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.HELP,
      page: () => HelpView(),
      binding: HelpBinding(),
    ),
    GetPage(
      name: _Paths.LANDING,
      page: () => LandingView(),
      binding: LandingBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.EVALUASI,
      page: () => EvaluasiView(),
      binding: EvaluasiBinding(),
    ),
    GetPage(
      name: _Paths.STANDAR_KOMPETENSI,
      page: () => StandarKompetensiView(),
      binding: StandarKompetensiBinding(),
    ),
    GetPage(
      name: _Paths.PETA_KONSEP,
      page: () => PetaKonsepView(),
      binding: PetaKonsepBinding(),
    ),
    GetPage(
      name: _Paths.MATERI,
      page: () => MateriView(),
      binding: MateriBinding(),
    ),
    GetPage(
      name: _Paths.RANGKUMAN,
      page: () => RangkumanView(),
      binding: RangkumanBinding(),
    ),
    GetPage(
      name: _Paths.REFRENSI,
      page: () => RefrensiView(),
      binding: RefrensiBinding(),
    ),
  ];
}
