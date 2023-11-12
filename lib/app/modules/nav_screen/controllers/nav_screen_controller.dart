import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:student_schools/app/modules/home_screen/views/home_screen_view.dart';
import 'package:student_schools/app/modules/notics/views/notics_view.dart';
import 'package:student_schools/app/modules/profile_screen/views/profile_screen_view.dart';

class NavScreenController extends GetxController {
  RxInt selectIndex = 0.obs;

  RxList bodyList = [HomeScreenView(), ProfileScreenView(), NoticsView()].obs;

  final appDrawer = Drawer(
    backgroundColor: Colors.grey,
    child: Column(
      children: [
        Container(
          height: 200,
          width: 400,
          color: Colors.red,
        )
      ],
    ),
  );
}
