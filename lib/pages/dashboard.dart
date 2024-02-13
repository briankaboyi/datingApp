import 'package:dating_app/controllers/profile_controller.dart';
import 'package:dating_app/pages/my_home_page.dart';
import 'package:dating_app/pages/profile_page.dart';
import 'package:dating_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../widgets/avatar_widget.dart';
import '../widgets/chat_widget.dart';

class Dashboard extends GetView<ProfileController> {
  RxInt myIndex = 0.obs;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(
              top: 25.0,
            ),
            child: TextWidget(
              color: Colors.black54,
              value: 'MATCHES',
              textAlign: TextAlign.start,
              fontWeight: FontWeight.w400,
              fontSize: 13,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 130, // Replace with your desired height
              width: Get.width,
              //top caorusel
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.profileList.length,
                  itemBuilder: (BuildContext BuildContext, index) {
                    var e = controller.profileList[index];
        
                    return Center(
                      child: Row(
                        children: [
                          InkWell(
                              onTap: () {
                                controller.currentProfile.value = index;
                                Get.off(ProfilePage());
                              },
                              child: AvatarWidget(
                                image: Image.asset(e['image']),
                                text: e['title'],
                                age: e['age'],
                              ))
                        ],
                      ),
                    );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15, left: 15),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(15),
                    color: Color(0xFFF6F5F3)),
                //search bar
                width: Get.width,
                height: 60, alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: TextField(
                      decoration: InputDecoration(
                    hintText: 'Search',
                    hintStyle: TextStyle(fontSize: 18, color: Colors.black38),
                    suffixIcon: Icon(Icons.search, color: Colors.black26),
                    border: InputBorder.none,
                  )),
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 20.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: TextWidget(
                        color: Colors.black54,
                        value: 'CHAT',
                        textAlign: TextAlign.start,
                        fontSize: 13,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                // chat caorasel
                SizedBox(
                  height: 415, // Replace with your desired height
                  width: Get.width,
                  //top caorusel
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: controller.profileList.length,
                      itemBuilder: (BuildContext BuildContext, index) {
                        var e = controller.profileList[index];
        
                        return Center(
                          child: Row(
                            children: [
                              InkWell(
                                  onTap: () {
                                    controller.currentProfile.value = index;
                                    Get.off(ProfilePage());
                                  },
                                  child: ChatWidget(
                                      image: Image.asset(e['image']),
                                      text: e['title'],
                                      age: e['age'],
                                      message: e['message'],
                                      time: e['time']))
                            ],
                          ),
                        );
                      }),
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 70,
        child: BottomNavigationBar(
          onTap: (index) {
            myIndex.value = index;

            switch (myIndex.value) {
              case 0:
                // Get.off(MyHomePage());
            Container(
                child: TextWidget(value: "case 0", textAlign: TextAlign.center, fontSize: 34, fontWeight: FontWeight.bold),
              );
                break;
              case 1:
                // Get.off(ProfilePage());
                Container(
                  child: TextWidget(value: "case 1", textAlign: TextAlign.center, fontSize: 34, fontWeight: FontWeight.bold),
                );
                break;

              case 3:
                // Get.off(ProfilePage());
                Container(
                  child: TextWidget(value: "case 2", textAlign: TextAlign.center, fontSize: 34, fontWeight: FontWeight.bold),
                );
                break;
            }
          },
          currentIndex: myIndex.value,
          backgroundColor: Color(0xFFF6F5F3),
          iconSize: 30,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
                color: Colors.black54,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.heart_broken_rounded, color: Colors.black54),
              label: "",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.chat_bubble_outlined, color: Colors.black),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.person, color: Colors.black54), label: ""),
          ],
        ),
      ),
    );
  }
}
