import 'package:dio/dio.dart';
import 'package:get/get.dart';

class Teams extends GetxController{

  final dio = Dio();


  RxList jsonList = [].obs;

  Future<Teams> getTeams() async {
    var response = await dio.get('https://www.balldontlie.io/api/v1/teams');
    jsonList.value = response.data['data'];
    print(jsonList);
    return this;
  }

}