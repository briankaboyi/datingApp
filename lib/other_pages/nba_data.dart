import 'dart:convert';

import 'package:dating_app/other_pages/Teams.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class NbaData extends GetView<Teams> {//nbadata can access functionality provided by the teams controller through the Get package.
  @override
  Widget build(BuildContext context) {
    RxInt _visibleItems = 10.obs;
    ScrollController _scrollController = ScrollController();

    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        _visibleItems.value += 10;
      }});
    // TODO: implement build
    return Scaffold(
      body: NotificationListener<ScrollNotification>(
        onNotification: (ScrollNotification scrollInfo){
          return true;
        },
        child: FutureBuilder<Teams>(//future builder handles asynchronous data loading
          future: controller.getTeams(),//getteams is a method in the teams class that returns a future<Teams>
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {//builder takes a callback with two parameters. buildcontext and snapshot.
            if (snapshot.connectionState == ConnectionState.done) {//the connection state of the snapshot is checked , if done , it returns a list view
              return ListView.builder(
                controller: _scrollController,
                itemCount: _visibleItems.value,
                itemBuilder: (BuildContext context, int index) {
                  if (index== _visibleItems.value-1){
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircularProgressIndicator(),
                      ],
                    );
                  }
                 else if (index < controller.jsonList.length){//creates a list of listTile  widgets based on jsonList length
                   var e = controller.jsonList[index];
                   return Padding(
                     padding: const EdgeInsets.all(20.0),
                     child: Container(
                       height: 60,
                       color: Colors.black12,
                       child: ListTile(
                         title: Text(e['full_name'])//each tile contains the value of e['full_name'] from the json list from the corresponding index indicated by e.

                       ),
                     ),
                   );
                 }else{
                   return SizedBox.shrink();// displays when the index is out of range. prevents an  out of range error
                 }


                },



              );
            }else{
              return Center(
                child: CircularProgressIndicator(), //if the connection state is not done,  a circular progress indicator is displayed at the center of the screen
              );
            }


          },
        ),
      ),
    );
  }

}
