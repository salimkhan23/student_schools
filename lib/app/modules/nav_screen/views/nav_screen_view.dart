import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:student_schools/app/routes/app_pages.dart';

import '../../../../widgets/m_app_header.dart';

import '../controllers/nav_screen_controller.dart';

class NavScreenView extends GetView<NavScreenController> {
  const NavScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      drawer: Drawer(
        backgroundColor: Colors.grey,
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Column(
                children: [
                  MAppHeader(
                    paddin: 0,
                    redius: 0,
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.account_circle),
                            SizedBox(width: 10),
                            Text('Profile',
                                style: TextStyle(color: Colors.white))
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Icon(Icons.calendar_month),
                            SizedBox(width: 10),
                            Text('Attendance',
                                style: TextStyle(color: Colors.white))
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Icon(Icons.history),
                            SizedBox(width: 10),
                            Text('Payment History',
                                style: TextStyle(color: Colors.white))
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              ElevatedButton(onPressed: () {}, child: const Text('Logout'))
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        actions: [
          InkWell(
            onTap: () {
              Get.toNamed(Routes.NOTIFICATION);
            },
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                const SizedBox(
                  width: 35,
                  height: 30,
                ),
                const Icon(
                  Icons.notifications,
                  color: Colors.white,
                  size: 30,
                ),
                Positioned(
                    right: 10,
                    top: 0,
                    child: Center(
                      child: Container(
                        alignment: Alignment.topCenter,
                        height: 15,
                        width: 15,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.amber,
                        ),
                        child: const Text('1'),
                      ),
                    )),
              ],
            ),
          ),
          const SizedBox(
            width: 10,
          )
        ],
      ),
      body: Obx(() => controller.bodyList[controller.selectIndex.value]),
      floatingActionButton: FloatingActionButton(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
              side: const BorderSide(color: Colors.orange, width: 5)),
          onPressed: () {
            controller.selectIndex.value = 2;
          },
          child: const Icon(Icons.contact_support)),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        notchMargin: 6,
        color: Colors.grey,
        shape: const CircularNotchedRectangle(),
        height: 80,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                controller.selectIndex.value = 0;
              },
              child: Obx(
                () => controller.selectIndex.value == 0
                    ? const Column(
                        children: [
                          Icon(
                            Icons.home,
                            color: Colors.white,
                          ),
                          Text(
                            'Home',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      )
                    : const Column(
                        children: [
                          Icon(Icons.home),
                          Text('Home'),
                        ],
                      ),
              ),
            ),
            GestureDetector(
              onTap: () {
                controller.selectIndex.value = 1;
              },
              child: Obx(
                () => controller.selectIndex.value == 1
                    ? const Column(
                        children: [
                          Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                          Text(
                            'Profile',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      )
                    : const Column(
                        children: [
                          Icon(Icons.person),
                          Text('Profile'),
                        ],
                      ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
