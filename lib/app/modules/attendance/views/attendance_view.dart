import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:student_schools/app/modules/attendance/models/student_data.dart';

import '../controllers/attendance_controller.dart';
import '../widgets/m_atten_name.dart';
import '../widgets/m_drop_button.dart';

class AttendanceView extends GetView<AttendanceController> {
  const AttendanceView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(AttendanceController());
    return Scaffold(
        appBar: AppBar(
          title: const Text('Teacher Attendance'),
          centerTitle: true,
          backgroundColor: Colors.grey,
        ),
        body: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: Container(
                height: 500,
                width: Get.width,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 100,
                      width: Get.width,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            // Obx(
                            //   () => Expanded(child: ListView.builder(
                            //     itemBuilder: (context, index) {
                            //       StudentSection data =
                            //           controller.studentSectionList[index];
                            //       return MDropdownButton(
                            //         value: data.classData,
                            //         dataList:
                            //             controller.studentSectionList.value,
                            //         onChanged: (Value) {
                            //           controller.studentSectionList;
                            //         },
                            //       );
                            //     },
                            //   )),
                            // )
                            // SizedBox(
                            //   width: 10,
                            // ),
                            Obx(
                              () => MDropdownButton(
                                value: controller.value.value,
                                dataList: controller.attendanceTabList,
                                onChanged: (Value) {
                                  controller.value.value = Value.toString();
                                },
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Obx(
                              () => MDropdownButton(
                                value: controller.value.value,
                                dataList: controller.attendanceTabList,
                                onChanged: (Value) {
                                  controller.value.value = Value.toString();
                                },
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Obx(
                              () => MDropdownButton(
                                value: controller.value.value,
                                dataList: controller.attendanceTabList,
                                onChanged: (Value) {
                                  controller.value.value = Value.toString();
                                },
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Obx(
                              () => MDropdownButton(
                                value: controller.value.value,
                                dataList: controller.attendanceTabList,
                                onChanged: (Value) {
                                  controller.value.value = Value.toString();
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Obx(
                      () => Container(
                        height: 50,
                        width: Get.width,
                        color: Colors.blue,
                        child: MAttenName(
                          roll: 'Roll',
                          name: 'Name',
                          isAllPresent: controller.isAllPresent.value,
                          onChanged: (Value) {
                            controller.allPresent(Value!);
                          },
                        ),
                      ),
                    ),
                    Container(
                      height: 3,
                      color: Colors.blueGrey,
                    ),
                    Obx(
                      () => Expanded(
                        child: ListView.builder(
                          itemCount: controller.studentDataList.length,
                          itemBuilder: (context, index) {
                            StudentData data =
                                controller.studentDataList[index];
                            return MAttenName(
                              roll: data.roll,
                              name: data.name,
                              isPresent: data.isPresent,
                              onChanged: (Value) {
                                controller.present(
                                    intex: index, present: Value!);
                              },
                            );
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
