import 'package:get/get.dart';

import '../controllers/notics_controller.dart';

class NoticsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NoticsController>(
      () => NoticsController(),
    );
  }
}
