import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:student_schools/widgets/m_input_user.dart';

class LoginScreenController extends GetxController {
  RxBool isTeacher = false.obs;

  @override
  void onInit() {
    isTeacher.value = Get.arguments ?? false;
    forgetDailog();
    super.onInit();
  }

  forgetDailog() {
    return Get.dialog(
      Dialog(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('User id'),
              SizedBox(
                height: 20,
              ),
              MInputUser(
                hintText: 'user id',
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(onPressed: () {}, child: Text('Send'))
            ],
          ),
        ),
      ),
    );
  }
}
