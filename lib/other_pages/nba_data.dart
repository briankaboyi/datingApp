import 'dart:convert';

import 'package:dating_app/other_pages/Teams.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class NbaData extends GetView<Teams> {
  //nbadata can access functionality provided by the teams controller through the Get package.
  @override
  Widget build(BuildContext context) {
    controller.scrollController.addListener(() {
      //adds a listener to the ScrollController instance
      if (controller.scrollController.position.pixels ==
          controller.scrollController.position.maxScrollExtent) {
        //the the user reaches the end  of scrollable items, the value of vivsible items is increased by 10 after ta delay of two seconds
        Future.delayed(const Duration(seconds: 2), () {
          controller.visibleItems.value += 10;
        });
      }
      ;
    });
    // TODO: implement build
    return Scaffold(
      body: NotificationListener<ScrollNotification>(
        onNotification: (ScrollNotification scrollInfo) {
          return true;
        },
        child: FutureBuilder<Teams>(
          //future builder handles asynchronous data loading
          future: controller
              .getTeams(), //getteams is a method in the teams class that returns a future<Teams>
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            //builder takes a callback with two parameters. buildcontext and snapshot.
            if (snapshot.connectionState == ConnectionState.done) {
              //the connection state of the snapshot is checked , if done , it returns a list view
              return Obx(() => ListView.builder(
                    controller: controller.scrollController,
                    itemCount: controller.visibleItems.value,
                    itemBuilder: (BuildContext context, int index) {
                      if (index == controller.visibleItems.value - 1) {
                        if (controller.visibleItems.value <
                            controller.jsonList.length) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        } else {
                          return const SizedBox
                              .shrink(); // displays when the index is out of range. prevents an  out of range error
                        }
                      } else if (index < controller.jsonList.length) {
                        //creates a list of listTile  widgets based on jsonList length
                        var e = controller.jsonList[index];

                        return Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: InkWell(
                            onTap: () {
                              controller.teamId.value = controller.jsonList[index]['id'];
                              controller.testid();
                            },
                            child: Container(
                              height: 60,
                              color: Colors.black12,
                              child: ListTile(
                                  title: Text(e[
                                      'full_name']) //each tile contains the value of e['full_name'] from the json list from the corresponding index indicated by e.

                                  ),
                            ),
                          ),
                        );
                      } else {
                        return const SizedBox
                            .shrink(); // displays when the index is out of range. prevents an  out of range error
                      }
                    },
                  ));
            } else {
              return const Center(
                child:
                    CircularProgressIndicator(), //if the connection state is not done,  a circular progress indicator is displayed at the center of the screen
              );
            }
          },
        ),
      ),
    );
  }
}
