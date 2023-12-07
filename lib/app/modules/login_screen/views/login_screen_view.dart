import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:student_schools/app/routes/app_pages.dart';
import 'package:student_schools/m_image_path.dart';
import 'package:student_schools/widgets/m_asset_image.dart';

import '../../../../widgets/m_input_user.dart';
import '../controllers/login_screen_controller.dart';

class LoginScreenView extends GetView<LoginScreenController> {
  const LoginScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(LoginScreenController());
    return Scaffold(
        appBar: AppBar(
          title: const Text('Login'),
          centerTitle: true,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Obx(() => controller.isTeacher.value
                      ? const MAssetImage(
                          path: MImagesPath.teacher2,
                          size: 300,
                        )
                      : const MAssetImage(
                          path: MImagesPath.student1,
                          size: 250,
                        )),
                  Obx(
                    () => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30),
                      child: Text(
                        controller.isTeacher.value
                            ? 'Wellcome Teacher'
                            : 'Wellcome Student',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('User id'),
                      SizedBox(
                        height: 10,
                      ),
                      MInputUser(
                        hintText: 'Enter User Name',
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Password'),
                      SizedBox(
                        height: 10,
                      ),
                      MInputUser(
                        hintText: 'Enter User Password',
                        ispassword: true,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const Text('forgot password'),
                      TextButton(
                          onPressed: () {
                            controller.forgetdialog();
                          },
                          child: const Text('Forgot Password'))
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Get.offAllNamed(Routes.NAV_SCREEN);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 50, vertical: 10),
                      ),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('Login'),
                          Icon(Icons.arrow_forward),
                        ],
                      ))
                ],
              ),
            ),
          ),
        ));
  }
}
