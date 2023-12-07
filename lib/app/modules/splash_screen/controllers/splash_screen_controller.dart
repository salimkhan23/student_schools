import 'package:get/get.dart';
import 'package:student_schools/app/routes/app_pages.dart';

class SplashScreenController extends GetxController {
  @override
  void onInit() {
    nextScreen();
    super.onInit();
  }

  nextScreen() async {
    await Future.delayed(const Duration(seconds: 10));
    Get.offAllNamed(Routes.ONBOARD_SCREEN);
  }
}
