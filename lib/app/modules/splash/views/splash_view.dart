import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sistem_pertahanan_tubuh/app/constant/colors.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            const Spacer(),
            Expanded(
              flex: 4,
              child: AspectRatio(
                aspectRatio: 1,
                child: Image.asset(
                  "assets/amico.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Spacer(),
            const Expanded(
              flex: 1,
              child: Text(
                "Belajar Online,\nMenyenangkan...",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: MyColors.purple),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
