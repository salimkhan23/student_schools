import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:student_schools/widgets/m_app_header.dart';
import 'package:student_schools/widgets/m_text.dart';

import '../controllers/profile_screen_controller.dart';

class ProfileScreenView extends GetView<ProfileScreenController> {
  const ProfileScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          MAppHeader(
            imageShape: BoxShape.rectangle,
            imageRadius: BorderRadius.circular(20),
            sizeWidth: 40,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: Get.height / 2,
              width: Get.width,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  const MText(textValue: 'Student Information'),
                  const SizedBox(height: 10),
                  Container(
                      color: Colors.white,
                      height: 2,
                      width: Get.width / 10 * 8),

                  ////////
                  //////
                  ///
                  const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(children: [
                                Icon(Icons.calendar_month, color: Colors.white),
                                SizedBox(width: 20),
                                MText(textValue: 'Date of birth'),
                              ]),
                              MText(textValue: '15-12-1997'),
                            ]),
                        SizedBox(height: 20),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(children: [
                                Icon(Icons.group, color: Colors.white),
                                SizedBox(width: 20),
                                MText(textValue: 'Gender'),
                              ]),
                              MText(textValue: 'Male'),
                            ]),
                        SizedBox(height: 20),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(children: [
                                Icon(Icons.bloodtype, color: Colors.white),
                                SizedBox(width: 20),
                                MText(textValue: 'Blood Group'),
                              ]),
                              MText(textValue: 'B+ Positive'),
                            ]),
                        SizedBox(height: 20),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(children: [
                                Icon(Icons.person, color: Colors.white),
                                SizedBox(width: 20),
                                MText(textValue: 'Father`s Name'),
                              ]),
                              MText(textValue: 'Abdul Hamid'),
                            ]),
                        SizedBox(height: 20),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(children: [
                                Icon(Icons.shop, color: Colors.white),
                                SizedBox(width: 20),
                                MText(textValue: 'Occupation'),
                              ]),
                              MText(textValue: 'Businessman'),
                            ]),
                        SizedBox(height: 20),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(children: [
                                Icon(Icons.call, color: Colors.white),
                                SizedBox(width: 20),
                                MText(textValue: 'Phone'),
                              ]),
                              MText(textValue: '01765402723'),
                            ]),
                        SizedBox(height: 20),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(children: [
                                Icon(Icons.add_home_work_sharp,
                                    color: Colors.white),
                                SizedBox(width: 20),
                                MText(textValue: 'Address'),
                              ]),
                              MText(textValue: 'Nandail--Mymensingh'),
                            ]),
                        SizedBox(height: 20),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(children: [
                                Icon(Icons.class_outlined, color: Colors.white),
                                SizedBox(width: 20),
                                MText(textValue: 'Class'),
                              ]),
                              MText(textValue: 'Diploma'),
                            ]),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
