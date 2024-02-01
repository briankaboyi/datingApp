import 'package:dating_app/widgets/text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class AvatarWidget extends GetView {
  final Image image;
  final String text;
  final String age;
  @override
  const AvatarWidget( {required this.image, required this.text, required this.age});
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(children: [
          Container(

            width: 70,
            height: 70,
            child: ClipOval(
              child: image,

            )
          ),
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: TextWidget(
              value: text,
              textAlign: TextAlign.start,
              fontWeight: FontWeight.bold, fontSize: 15,
            ),
          ),
          TextWidget(
            value: age,
            textAlign: TextAlign.start,
            fontWeight: FontWeight.w500, fontSize: 15,
          ),
        ]),
      ),
    );
  }
}


////////////////////////leading
