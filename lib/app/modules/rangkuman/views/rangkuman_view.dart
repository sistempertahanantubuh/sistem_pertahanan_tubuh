import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/rangkuman_controller.dart';

class RangkumanView extends GetView<RangkumanController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RangkumanView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'RangkumanView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
