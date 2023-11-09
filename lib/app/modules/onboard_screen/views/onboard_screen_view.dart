import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:student_schools/app/modules/onboard_screen/models/onboard_data_model.dart';

import '../controllers/onboard_screen_controller.dart';

class OnboardScreenView extends GetView<OnboardScreenController> {
  const OnboardScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(OnboardScreenController());
    return Scaffold(
        appBar: AppBar(
          actions: [
            Obx(
              () => controller.onBoardDataList.length - 1 ==
                      controller.index.value
                  ? SizedBox()
                  : TextButton(
                      onPressed: () {},
                      child: Text('Skip'),
                    ),
            ),
            SizedBox(
              width: 20,
            ),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              flex: 4,
              child: PageView.builder(
                controller: controller.onboardPageController,
                itemCount: controller.onBoardDataList.length,
                onPageChanged: controller.changeIndex,
                itemBuilder: (context, index) {
                  OnBoardDataModel data = controller.onBoardDataList[index];
                  return Column(
                    children: [
                      Container(
                        height: (Get.height / 10) * 5,
                        width: Get.width,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(data.imgUrl))),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        data.title,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        data.subTitle,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                    ],
                  );
                },
              ),
            ),
            Expanded(
                flex: 1,
                child: Obx(
                  () => Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        controller.onBoardDataList.length,
                        (index) => Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: AnimatedContainer(
                                duration: Duration(seconds: 1),
                                width:
                                    controller.index.value == index ? 40 : 20,
                                height: 20,
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                            )),
                  ),
                )),
            Obx(
              () => ElevatedButton(
                onPressed: () {
                  controller.toNextScreen();
                },
                child: controller.onBoardDataList.length - 1 !=
                        controller.index.value
                    ? Text('Next')
                    : Text('Get Start'),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 40,
            )
          ],
        ));
  }
}
