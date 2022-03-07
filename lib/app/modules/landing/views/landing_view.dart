import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import 'package:get/get.dart';
import 'package:sistem_pertahanan_tubuh/app/constant/colors.dart';
import 'package:sistem_pertahanan_tubuh/app/routes/app_pages.dart';

import '../controllers/landing_controller.dart';

class LandingView extends GetView<LandingController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              bottom: 0,
              child: Container(
                  width: Get.width,
                  height: Get.height * 0.3,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24)),
                      color: MyColors.blue),
                  child: Center(
                    child: NeumorphicButton(
                      margin: const EdgeInsets.only(top: 12),
                      onPressed: () {
                        Get.toNamed(Routes.HOME);
                      },
                      style: NeumorphicStyle(
                        color: Colors.white,
                        shape: NeumorphicShape.concave,
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(24)),
                        //border: NeumorphicBorder()
                      ),
                      padding: EdgeInsets.symmetric(
                          horizontal: Get.width > Get.height
                              ? Get.width * 0.1
                              : Get.width * 0.3,
                          vertical: 18),
                      child: Text("Mulai",
                          style: Get.textTheme.headline4!.copyWith(
                              color: MyColors.blue,
                              fontWeight: FontWeight.bold)),
                    ),
                  )),
            ),
            Positioned(
                bottom: Get.height * 0.26 - 40,
                child: SizedBox(
                  height: Get.height - Get.height * 0.5,
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(48),
                      child: Image.asset(
                        'assets/cuate.png',
                      ),
                    ),
                  ),
                )),
            Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                height: Get.height * 0.2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Sistem Pertahanan Tubuh",
                        style: Get.textTheme.headline5!.copyWith(
                            color: MyColors.purple,
                            fontWeight: FontWeight.bold)),
                    const SizedBox(
                      height: 16,
                    ),
                    const Text(
                      "Kelas 11 Semester Genap",
                      style: TextStyle(
                          color: MyColors.purple, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
