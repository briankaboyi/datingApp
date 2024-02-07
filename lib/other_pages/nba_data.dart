import 'dart:convert';

import 'package:dating_app/other_pages/Teams.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class NbaData extends GetView<Teams> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: FutureBuilder<Teams>(
        future: controller.getTeams(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return ListView.builder(
              itemCount: controller.jsonList.length,
              itemBuilder: (BuildContext context, int index) {
               if (index < controller.jsonList.length){
                 var e = controller.jsonList[index];
                 return ListTile(
                   title: Text(e['full_name']),
                 );
               }else{
                 return SizedBox.shrink();
               }
              },
            );
          }
          ;
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }

  // Log.d(tag:"success",msg:response);
}
