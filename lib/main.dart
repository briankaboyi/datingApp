import 'package:dating_app/other_pages/nba_data.dart';
import 'package:dating_app/pages/dashboard.dart';
import 'package:dating_app/pages/my_home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controllers/profile_controller.dart';
import 'other_pages/Teams.dart';

void main() {
  Get.put(ProfileController());
  Get.put(NbaData());
  Get.put(Teams());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: NbaData(),
    );
  }
}
