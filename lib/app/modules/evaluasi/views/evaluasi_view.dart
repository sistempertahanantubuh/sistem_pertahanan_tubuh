import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/evaluasi_controller.dart';

class EvaluasiView extends GetView<EvaluasiController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EvaluasiView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'EvaluasiView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
