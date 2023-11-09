import 'package:get/get.dart';

import '../controllers/user_select_input_controller.dart';

class UserSelectInputBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserSelectInputController>(
      () => UserSelectInputController(),
    );
  }
}
