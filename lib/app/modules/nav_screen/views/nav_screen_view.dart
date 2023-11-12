import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:student_schools/m_image_path.dart';

import '../controllers/nav_screen_controller.dart';

class NavScreenView extends GetView<NavScreenController> {
  const NavScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.grey,
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Container(
                    height: 200,
                    width: 400,
                    color: Colors.blue,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundImage: AssetImage(MImagesPath.salim),
                                maxRadius: 50,
                              ),
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('SALIM_KHAN',
                                      style: TextStyle(color: Colors.white)),
                                  Text('Student : Univers IT',
                                      style: TextStyle(color: Colors.white)),
                                  Text('ID : 465517',
                                      style: TextStyle(color: Colors.white)),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
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
          onPressed: () {
            controller.selectIndex.value = 2;
          },
          child: Icon(Icons.contact_support)),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.blueGrey,
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
