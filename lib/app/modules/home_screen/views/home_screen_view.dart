import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:student_schools/app/modules/home_screen/models/home_event.dart';
import 'package:student_schools/app/modules/home_screen/models/home_item.dart';
import 'package:student_schools/app/routes/app_pages.dart';
import 'package:student_schools/widgets/home_event_item.dart';
import 'package:student_schools/widgets/m_app_header.dart';
import 'package:student_schools/widgets/m_text.dart';

import '../controllers/home_screen_controller.dart';

class HomeScreenView extends GetView<HomeScreenController> {
  const HomeScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenController());
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          const MAppHeader(paddin: 20, sizeWidth: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: SizedBox(
              height: Get.height / 10 * 3,
              width: Get.width,
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: controller.homeIconsList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 1.0,
                ),
                itemBuilder: (context, index) {
                  HomeItemSM item = controller.homeIconsList[index];
                  return GestureDetector(
                    onTap: () {
                      if (item.widget != null) {
                        Get.to(item.widget!,
                            duration: const Duration(seconds: 1),
                            curve: Curves.ease);
                      }
                    },
                    child: Column(
                      children: [
                        Material(
                          elevation: 1,
                          borderRadius: BorderRadius.circular(10),
                          child: SizedBox(
                            height: 60,
                            width: 60,
                            child: item.imageIcon,
                          ),
                        ),
                        const SizedBox(height: 10),
                        MText(
                          textValue: item.text,
                          textColor: Colors.black,
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          Container(
            height: 600,
            width: Get.width,
            decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    MText(
                        textValue: 'Upcoming Event',
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                    InkWell(
                        onTap: () {
                          Get.toNamed(Routes.ALL_EVENT,
                              arguments: controller.homeEventList);
                        },
                        child: MText(textValue: 'See All')),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                // HomeEventItem()

                Expanded(
                    child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: (controller.homeEventList.length > 4)
                      ? 4
                      : controller.homeEventList.length,
                  itemBuilder: (context, index) {
                    final HomeEvent item = controller.homeEventList[index];
                    return HomeEventItem(
                      item: item,
                    );
                  },
                ))
              ],
            ),
          )
        ],
      ),
    ));
  }
}
