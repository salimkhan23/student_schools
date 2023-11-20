import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:student_schools/app/modules/academic/views/academic_view.dart';
import 'package:student_schools/app/modules/attendance/views/attendance_view.dart';
import 'package:student_schools/app/modules/home_screen/models/home_item.dart';
import 'package:student_schools/m_image_path.dart';

import '../models/home_event.dart';

class HomeScreenController extends GetxController {
  List<HomeItemSM> homeIconsList = [
    HomeItemSM(
        text: 'Academic',
        imageIcon: Image.asset(MImagesPath.icons1),
        widget: AcademicView()),
    HomeItemSM(
        text: 'Attendance',
        imageIcon: Image.asset(MImagesPath.icons2),
        widget: AttendanceView()),
    HomeItemSM(text: 'Transport', imageIcon: Image.asset(MImagesPath.icons3)),
    HomeItemSM(text: 'Library', imageIcon: Image.asset(MImagesPath.icons4)),
    HomeItemSM(text: 'Leave', imageIcon: Image.asset(MImagesPath.icons5)),
    HomeItemSM(text: 'Time-Clock', imageIcon: Image.asset(MImagesPath.icons6)),
  ];

  List<HomeEvent> homeEventList = [
    HomeEvent(
        dateName: 'Sun',
        date: '04,Dec',
        name: 'Flutter Developer',
        time: '9.30 am - 3.50 pm'),
    HomeEvent(
        dateName: 'Sun',
        date: '04,Dec',
        name: 'Flutter Developer',
        time: '9.30 am - 3.50 pm'),
    HomeEvent(
        dateName: 'Sun',
        date: '04,Dec',
        name: 'Flutter Developer',
        time: '9.30 am - 3.50 pm'),
    HomeEvent(
        dateName: 'Sun',
        date: '04,Dec',
        name: 'Flutter Developer',
        time: '9.30 am - 3.50 pm'),
    HomeEvent(
        dateName: 'Sun',
        date: '04,Dec',
        name: 'Flutter Developer',
        time: '9.30 am - 3.50 pm'),
    HomeEvent(
        dateName: 'Sun',
        date: '04,Dec',
        name: 'Flutter Developer',
        time: '9.30 am - 3.50 pm'),
    HomeEvent(
        dateName: 'Sun',
        date: '04,Dec',
        name: 'Flutter Developer',
        time: '9.30 am - 3.50 pm'),
  ];
}
