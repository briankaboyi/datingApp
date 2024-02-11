import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class Teams extends GetxController {
  //teams is a subclass of getxcontroller which means it can use getx library to manage state

  final dio =
      Dio(); //created an instance of dio which will be later used to make http requests

  RxList jsonList = []
      .obs; //create a reactive list jsonList. reactive list allow reactive programming and automatic UI updates when the list changes. .obs allows you to listen to changes in the list and react accordingly.

  RxInt teamId = 0.obs;
  RxMap<dynamic, dynamic> teamMap = {}.obs;

  void testteamdata() => {print(teamMap)};

  Future<Teams> getTeams() async {
    //asynchronous method that returns a future of type Teams
    var response = await dio.get(
        'https://www.balldontlie.io/api/v1/teams'); //a http request is made using the dio instance
    jsonList.value = response.data[
        'data']; // the response data is assigned to the jsonlist.value propery
   //json list is printed to the console
    return this; //returns the current instance of the Teams class|| not necessary if you dont plan to chain methods or perform any additional operations
  }

  Future<Teams> getTeamById() async {
    var response =
        await dio.get('https://www.balldontlie.io/api/v1/teams/$teamId');
    teamMap.value = response.data as Map<String, dynamic>;
    // if (response.statusCode == 200) {
    //   var responseData = response.data;
    //
    //   if (responseData != null && responseData.containsKey('data')) {
    //     var teamData = responseData['data'];
    //
    //     if (teamData != null) {
    //       teamMap.value = response.data[
    //       'data'];
    //     }
    //   }
    // }
    return this;
  }

  RxInt visibleItems = 10
      .obs; //the number of visible items on loading of this page. obs makes it observable as the value is meant to change later in the code
  ScrollController scrollController =
      ScrollController(); //instance of the ScrollController used for handling scroll behavior
}
