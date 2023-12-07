import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:student_schools/m_image_path.dart';

import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  const SplashScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(SplashScreenController());
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              MImagesPath.appLogo,
              width: Get.width / 2,
              height: Get.width / 2,
            ),
            const SizedBox(height: 30),
            const SizedBox(
              height: 100,
              width: 100,
              child: CircularProgressIndicator(
                strokeWidth: 7,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
