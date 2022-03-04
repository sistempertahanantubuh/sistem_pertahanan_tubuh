import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/refrensi_controller.dart';

class RefrensiView extends GetView<RefrensiController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RefrensiView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'RefrensiView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
