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

        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/girl.jpg'),
                  fit: BoxFit.cover)

              ),
              child:

                  Column(
                children: [
                  AppBar(
                    actions: [Icon(Icons.cancel_rounded)],
                    leading: SizedBox(),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            TextWidget(
                                value: "Peggie, 23 ",
                                textAlign: TextAlign.left,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Icon(Icons.send, size: 15),
                            TextWidget(
                              value: '-300ft from you',
                              textAlign: TextAlign.center,
                              fontSize: 18,
                              fontWeight: FontWeight.w100,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: ['Modeling', 'Hiking', 'Photo', 'Design'].map((e) {
                      return Container(
                          margin: EdgeInsets.only(right: 5),
                          decoration: BoxDecoration(
                              color: Colors.black26,
                              borderRadius: BorderRadius.circular(15)),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                right: 10.0, left: 10.0, bottom: 5.0, top: 5.0),
                            child: Text(e),
                          ));
                    }).toList(),
                  ),
                  Column(
                    children: [
                      TextWidget(
                        value: 'BIO ',
                        textAlign: TextAlign.start,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                      TextWidget(
                        value:
                        'Hey there! My name is Peggie and Im a fashion \nphotographer. I love going to concerts \nand festivals. Lets grab some coffee and see \nwhere things go! ',
                        textAlign: TextAlign.start,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ],
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        ButtonWidget(
                          onPressed: () {
                            Get.to(ProfilePage());
                          },

                          textColor: Colors.white,
                          icon: Icons.cancel ?? Icons.error_outline,
                          bgColor: Color(0xFFF2681B),
                        ),
                        ButtonWidget(
                          onPressed: () {
                            Get.to(ProfilePage());
                          },

                          textColor: Colors.white,
                          icon: Icons.heart_broken ?? Icons.heart_broken_rounded ,
                          bgColor: Color(0xFFF2681B),
                        ),
                      ],
                    ),
                  )
                ],
              ),

            )
          ],
        ));
  }
}
