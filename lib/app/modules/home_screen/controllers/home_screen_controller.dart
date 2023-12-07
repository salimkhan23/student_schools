import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:student_schools/app/modules/academic/views/academic_view.dart';
import 'package:student_schools/app/modules/attendance/views/attendance_view.dart';
import 'package:student_schools/app/modules/home_screen/models/home_item.dart';
import 'package:student_schools/app/modules/leave/views/leave_view.dart';
import 'package:student_schools/app/modules/library/views/library_view.dart';
import 'package:student_schools/app/modules/transport/views/transport_view.dart';
import 'package:student_schools/m_image_path.dart';

import '../models/home_event.dart';

class HomeScreenController extends GetxController {
  List<HomeItemSM> homeIconsList = [
    HomeItemSM(
        text: 'Academic',
        imageIcon: Image.asset(MImagesPath.icons1),
        widget: const AcademicView()),
    HomeItemSM(
        text: 'Attendance',
        imageIcon: Image.asset(MImagesPath.icons2),
        widget: const AttendanceView()),
    HomeItemSM(
        text: 'Transport',
        imageIcon: Image.asset(MImagesPath.icons3),
        widget: const TransportView()),
    HomeItemSM(
        text: 'Library',
        imageIcon: Image.asset(MImagesPath.icons4),
        widget: const LibraryView()),
    HomeItemSM(
        text: 'Leave',
        imageIcon: Image.asset(MImagesPath.icons5),
        widget: const LeaveView()),
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
