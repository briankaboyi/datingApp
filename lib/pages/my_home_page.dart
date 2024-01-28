import 'package:dating_app/pages/profile_page.dart';
import 'package:dating_app/widgets/button_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/text_widget.dart';

class MyHomePage extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: TextWidget(
                value: 'Embrace \nA New Way \nOf Dating ',
                textAlign: TextAlign.start,
                fontWeight: FontWeight.bold, fontSize: 45,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15,bottom: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: TextWidget(
                  value:
                      'We combine cutting edge \ntechnology with a modern \napproach to matchmaking ',
                  textAlign: TextAlign.left,
                  fontWeight: FontWeight.w200,
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: ButtonWidget(
                    onPressed: () {
                      Get.to(ProfilePage());
                    },
                    text: 'Get Started',
                    textColor: Colors.white,
                    icon: Icons.arrow_forward_outlined,
                    bgColor: Color(0xFFF2681B),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
