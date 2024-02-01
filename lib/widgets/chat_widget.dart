import 'package:dating_app/widgets/text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class ChatWidget extends GetView{
  final Image image;
  final String text;
  final String time;
  final String age;
  final String message;
  @override
  const ChatWidget(  {required this.image, required this.text, required this.age,required this.time ,required this.message });
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: Get.width,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(children: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Column(
              children: [
                Container(

                    width: 60,
                    height: 60,
                    child: ClipOval(
                      child: image,

                    )
                ),
              ],
            ),
          ),
          Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Aligns the widgets at the center of the row
                children: [
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: TextWidget(
                      value: '$text, $age',
                      textAlign: TextAlign.start,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: TextWidget(
                      value: time,
                      textAlign: TextAlign.start,
                      fontWeight: FontWeight.w300,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              Row(
                children: [

                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: TextWidget(
                      value:message,
                      textAlign: TextAlign.start,
                      fontWeight: FontWeight.w300, fontSize: 15,
                    ),
                  ),

                ],
              ),
            ],
          ),




        ]),
      ),
    );
  }
}