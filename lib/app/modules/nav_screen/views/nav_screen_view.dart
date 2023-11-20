import 'package:flutter/material.dart';

import 'package:get/get.dart';

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
              Column(
                children: [
                  MAppHeader(
                    paddin: 0,
                    redius: 0,
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
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
              ElevatedButton(onPressed: () {}, child: Text('Logout'))
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        actions: [
          Stack(
            children: [
              Container(
                width: 35,
                height: 30,
              ),
              Icon(
                Icons.notifications,
                color: Colors.white,
                size: 30,
              ),
              Positioned(
                  right: 10,
                  top: 0,
                  child: Center(
                    child: Container(
                      child: Text('1'),
                      alignment: Alignment.center,
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.amber,
                      ),
                    ),
                  )),
            ],
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Obx(() => controller.bodyList[controller.selectIndex.value]),
      floatingActionButton: FloatingActionButton(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
              side: BorderSide(color: Colors.orange, width: 5)),
          onPressed: () {
            controller.selectIndex.value = 2;
          },
          child: Icon(Icons.contact_support)),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        notchMargin: 6,
        color: Colors.grey,
        shape: CircularNotchedRectangle(),
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
                    ? Column(
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
                    : Column(
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
                    ? Column(
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
                    : Column(
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
