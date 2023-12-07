import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:student_schools/app/modules/login_screen/views/login_screen_view.dart';

import '../../../../m_image_path.dart';
import '../../../../widgets/m_asset_image.dart';
import '../controllers/user_select_input_controller.dart';

class UserSelectInputView extends GetView<UserSelectInputController> {
  const UserSelectInputView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const MAssetImage(
            path: MImagesPath.onboarding2,
            size: 300,
          ),
          const Padding(
            padding: EdgeInsets.all(30.0),
            child: Center(
              child: Text(
                'Who are you!',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  MAssetImage(
                    path: MImagesPath.student1,
                    size: 150,
                    onTap: () {
                      Get.to(const LoginScreenView(),
                          duration: const Duration(seconds: 1),
                          curve: Curves.ease,
                          arguments: false);
                    },
                  ),
                  const SizedBox(height: 20),
                  const Text('Student'),
                ],
              ),
              Column(
                children: [
                  MAssetImage(
                    path: MImagesPath.teacher2,
                    size: 150,
                    onTap: () {
                      Get.to(const LoginScreenView(),
                          duration: const Duration(seconds: 1),
                          curve: Curves.ease,
                          arguments: true);
                    },
                  ),
                  const SizedBox(height: 20),
                  const Text('Teacher'),
                ],
              ),
            ],
          )
        ],
      ),
    ));
  }
}
