import 'package:dating_app/widgets/text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends GetView {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              TextWidget(value: "Pegie, 23 ", textAlign: TextAlign.left, fontSize: 20, fontWeight: FontWeight.bold)
            ],
          )
        ],
      ),
    );
  }
}
