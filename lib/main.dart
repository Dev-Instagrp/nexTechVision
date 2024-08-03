import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:next_tech_vision/View/home_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF373F98)),
      ),
      home: HomePage(),
    );
  }
}
