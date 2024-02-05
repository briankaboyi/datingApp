import 'package:dating_app/pages/dashboard.dart';
import 'package:dating_app/pages/my_home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controllers/profile_controller.dart';

void main() {
  Get.put(ProfileController());
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
      home: MyHomePage(),
    );
  }
}
