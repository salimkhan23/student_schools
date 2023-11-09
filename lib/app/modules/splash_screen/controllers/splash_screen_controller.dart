import 'package:get/get.dart';
import 'package:student_schools/app/routes/app_pages.dart';

class SplashScreenController extends GetxController {
  @override
  void onInit() {
    nextScreen();
    super.onInit();
  }

  nextScreen() async {
    await Future.delayed(Duration(seconds: 5));
    Get.offAllNamed(Routes.ONBOARD_SCREEN);
  }
}
