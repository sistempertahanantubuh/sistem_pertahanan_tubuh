import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/peta_konsep_controller.dart';

class PetaKonsepView extends GetView<PetaKonsepController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PetaKonsepView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'PetaKonsepView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
