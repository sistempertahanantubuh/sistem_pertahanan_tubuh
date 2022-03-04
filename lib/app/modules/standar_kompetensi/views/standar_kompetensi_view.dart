import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/standar_kompetensi_controller.dart';

class StandarKompetensiView extends GetView<StandarKompetensiController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StandarKompetensiView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'StandarKompetensiView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
