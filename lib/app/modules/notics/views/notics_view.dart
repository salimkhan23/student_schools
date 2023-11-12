import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/notics_controller.dart';

class NoticsView extends GetView<NoticsController> {
  const NoticsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NoticsView'),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: const Center(
        child: Text(
          'NoticsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
