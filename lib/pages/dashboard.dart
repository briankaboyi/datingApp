import 'package:dating_app/controllers/profile_controller.dart';
import 'package:dating_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../widgets/avatar_widget.dart';

class Dashboard extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: TextWidget(
          color: Colors.black,
          value: 'MATCHES',
          textAlign: TextAlign.start,
          fontWeight: FontWeight.w400,
          fontSize: 15,
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

                  return  Center(
                    child: Row(

                      children: [
                        InkWell(
                          onTap: (){
                            controller.currentProfile.value = index;
                          },
                          child: AvatarWidget(image: Image.asset(e['image']), text: e['title'], age: e['age'],)
                        )
                      ],
                    ),
                  );
                }),
          ),
          SizedBox(
              //search bar
              ),
          Column(
            children: [
              TextWidget(
                  value: 'CHAT',
                  textAlign: TextAlign.start,
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
              // chat caorasel
            ],
          )
        ],
      ),
     /* bottomNavigationBar: BottomNavigationBar(items: []),*/
    );
  }
}
