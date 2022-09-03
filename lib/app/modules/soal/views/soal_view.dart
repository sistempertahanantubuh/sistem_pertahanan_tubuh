import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/soal_controller.dart';

class SoalView extends GetView<SoalController> {
  const SoalView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SoalView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'SoalView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
