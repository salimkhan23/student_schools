import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/nav_screen_controller.dart';

class NavScreenView extends GetView<NavScreenController> {
  const NavScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NavScreenView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'NavScreenView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
