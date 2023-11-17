import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/academic_controller.dart';

class AcademicView extends GetView<AcademicController> {
  const AcademicView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AcademicView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'AcademicView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
