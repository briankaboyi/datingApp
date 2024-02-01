import 'package:dating_app/controllers/profile_controller.dart';
import 'package:dating_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../widgets/avatar_widget.dart';
import '../widgets/chat_widget.dart';

class Dashboard extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(top: 25.0, left: 10),
            child: TextWidget(
              color: Colors.black54,
              value: 'MATCHES',
              textAlign: TextAlign.start,
              fontWeight: FontWeight.w400,
              fontSize: 15,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 140, // Replace with your desired height
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
            padding: const EdgeInsets.only(top: 20.0, right: 20, left: 20),
            child: Container(
              //search bar
              width: Get.width,
              height: 60,
              color: Color(0xFFF6F5F3), alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: TextField(
                    decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: TextStyle(fontSize: 20, color: Colors.black54),
                  suffixIcon: Icon(Icons.search),
                  border: InputBorder.none,
                )),
              ),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 35.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: TextWidget(
                      color: Colors.black54,
                      value: 'CHAT',
                      textAlign: TextAlign.start,
                      fontSize: 15,
                      fontWeight: FontWeight.w400),
                ),
              ),
              // chat caorasel
              SizedBox(
                height: 500, // Replace with your desired height
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
      bottomNavigationBar: Container(
        height: 80,
        child: BottomNavigationBar(iconSize: 30,type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
                color: Colors.black,
              ),
              label: "Explore",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.heart_broken_rounded, color: Colors.black),
              label: "Cloud",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.chat_bubble_outlined, color: Colors.black),
                label: "Leaf"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person, color: Colors.black),
                label: "Likes"),

          ],
          /* onTap: (v){
            print(v);
            controller.currentIndex.value=v;
            if (controller.c != null) {
              controller.c!.jumpToPage(v);
            }
          },*/
        ),
      ),
    );
  }
}
