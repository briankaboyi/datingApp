import 'package:dating_app/pages/dashboard.dart';
import 'package:dating_app/widgets/text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/button_widget.dart';

class ProfilePage extends GetView {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Container(
          decoration:BoxDecoration(
        image: DecorationImage(
        image: AssetImage('assets/girl.jpg'), fit: BoxFit.cover)) ,
      child: Stack(
        children: [
          Container(
            decoration:BoxDecoration(
        gradient: LinearGradient(
        begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.black12,Colors.black38,
            Colors.black87,
          ],
        ),
    ),
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppBar(
                    actions: [
                      InkWell(
                        onTap:(

                        ){
                          Get.off(Dashboard());
                        },
                        child: Icon(
                          Icons.cancel_rounded,
                          size: 32,
                          color: Colors.white60,
                        ),
                      )
                    ],
                    leading: SizedBox(),
                    backgroundColor: Colors.transparent,
                  ),
                  Container(
                      width: Get.width,
                      height: 350,
                      child: Column(children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 10.0),
                                      child: TextWidget(
                                        color: Colors.white,
                                        value: "Peggie, 23 ",
                                        textAlign: TextAlign.left,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Icon(Icons.send,
                                        size: 15, color: Colors.white),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    TextWidget(
                                      color: Colors.white,
                                      value: '-300ft from you',
                                      textAlign: TextAlign.center,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: Row(
                            children: ['Modeling', 'Hiking', 'Photo', 'Design']
                                .map((e) {
                              return Container(
                                  margin: EdgeInsets.only(right: 5),
                                  decoration: BoxDecoration(
                                      color: Colors.white38,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        right: 10.0,
                                        left: 10.0,
                                        bottom: 5.0,
                                        top: 5.0),
                                    child: Text(e,
                                        style: TextStyle(color: Colors.white)),
                                  ));
                            }).toList(),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 5.0),
                              child: TextWidget(
                                color: Colors.white70,
                                value: 'BIO ',
                                textAlign: TextAlign.start,
                                fontWeight: FontWeight.w400,
                                fontSize: 20,
                              ),
                            ),
                            TextWidget(
                              color: Colors.white,
                              value:
                                  'Hey there! My name is Peggie and Im a fashion \nphotographer. I love going to concerts \nand festivals. Lets grab some coffee and see \nwhere things go! ',
                              textAlign: TextAlign.start,
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                            ),
                          ],
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ButtonWidget(
                                onPressed: () {
                                  Get.off(Dashboard());
                                },
                                textColor: Colors.white54,
                                icon: Icons.cancel ?? Icons.error_outline,
                                bgColor: Colors.white30,
                              ),
                              ButtonWidget(
                                onPressed: () {
                                  Get.off(Dashboard());
                                },
                                textColor: Colors.white,
                                icon: Icons.heart_broken ??
                                    Icons.heart_broken_rounded,
                                bgColor: Color(0xFFF2681B),
                                
                              ),
                            ],
                          ),
                        )
                      ])),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
