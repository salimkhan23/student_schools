import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../m_image_path.dart';
import '../controllers/user_select_input_controller.dart';

class UserSelectInputView extends GetView<UserSelectInputController> {
  const UserSelectInputView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('UserSelectInputView'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                MImagesPath.appLogo,
                width: Get.width / 3,
                height: Get.width / 3,
              ),
              SizedBox(
                height: 60,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 60, vertical: 10),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          MImagesPath.teacher2,
                          width: Get.width / 3,
                          height: Get.width / 3,
                        ),
                        Text('Student'),
                      ],
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Column(
                      children: [
                        Image.asset(
                          MImagesPath.teacher2,
                          width: Get.width / 3,
                          height: Get.width / 3,
                        ),
                        Text('Teacher'),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
