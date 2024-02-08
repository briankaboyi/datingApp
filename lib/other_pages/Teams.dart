import 'package:dio/dio.dart';
import 'package:get/get.dart';

class Teams extends GetxController {
  //teams is a subclass of getxcontroller which means it can use getx library to manage state

  final dio =
      Dio(); //created an instance of dio which will be later used to make http requests

  RxList jsonList = []
      .obs; //create a reactive list jsonList. reactive list allow reactive programming and automatic UI updates when the list changes. .obs allows you to listen to changes in the list and react accordingly.

  Future<Teams> getTeams() async {
    //asynchronous method that returns a future of type Teams
    var response = await dio.get(
        'https://www.balldontlie.io/api/v1/teams'); //a http request is made using the dio instance
    jsonList.value = response.data[
        'data']; // the response data is assigned to the jsonlist.value propery
    print(jsonList); //json list is printed to the console
    return this; //returns the current instance of the Teams class|| not necessary if you dont plan to chain methods or perform any additional operations
  }
}
