import 'package:dating_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import 'Teams.dart';

class TeamData extends GetView<Teams> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<Teams>(
        future: controller.getTeamById(),
        builder: (BuildContext context, AsyncSnapshot<Teams> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            var e = controller.teamMap;
            return Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AppBar(
                    title: TextWidget(
                        value:e['abbreviation'] ,
                        textAlign: TextAlign.center,
                        fontSize: 23,
                        fontWeight: FontWeight.bold),
                    actions: [
                      Padding(
                        padding: const EdgeInsets.only(right:15.0),
                        child: TextWidget(
                            value: e['name'],
                            textAlign: TextAlign.center,
                            fontSize: 23,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          TextWidget(
                            value: "CITY: ${e['full_name']}",
                            textAlign: TextAlign.center,
                            fontSize: 23,
                            fontWeight: FontWeight.w300,),
                          TextWidget(
                              value: "CITY: ${e['city']}",
                              textAlign: TextAlign.center,
                              fontSize: 23,
                              fontWeight: FontWeight.w300,),
                          TextWidget(
                              value: "CONFRENCE: ${e['conference']}",
                              textAlign: TextAlign.center,
                              fontSize: 23,
                              fontWeight: FontWeight.w300,),
                          TextWidget(
                              value: "DIVISION: ${e['division']}",
                              textAlign: TextAlign.center,
                              fontSize: 23,
                              fontWeight: FontWeight.w300,),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
