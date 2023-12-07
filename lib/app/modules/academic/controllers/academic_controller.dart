import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:student_schools/app/modules/academic/models/academic_data.dart';
import 'package:student_schools/m_image_path.dart';

class AcademicController extends GetxController {
  List<AcademicData> academicDataList = [
    AcademicData(
        imageIcon: Image.asset(
          MImagesPath.icon1,
          height: 50,
          width: 50,
        ),
        textName: "Exam",
        icon: Icon(
          Icons.arrow_forward_ios,
        )),
    AcademicData(
        imageIcon: Image.asset(
          MImagesPath.icon2,
          height: 50,
          width: 50,
        ),
        textName: "Home Work",
        icon: Icon(Icons.arrow_forward_ios)),
    AcademicData(
        imageIcon: Image.asset(
          MImagesPath.icon3,
          height: 50,
          width: 50,
        ),
        textName: "Assinment",
        icon: Icon(Icons.arrow_forward_ios)),
    AcademicData(
        imageIcon: Image.asset(
          MImagesPath.icon4,
          height: 50,
          width: 50,
        ),
        textName: "Report Card",
        icon: Icon(Icons.arrow_forward_ios)),
  ];
}
