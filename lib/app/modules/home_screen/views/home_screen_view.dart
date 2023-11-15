import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:student_schools/widgets/m_app_header.dart';

import '../controllers/home_screen_controller.dart';

class HomeScreenView extends GetView<HomeScreenController> {
  const HomeScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [MAppHeader()],
    ));
  }
}
