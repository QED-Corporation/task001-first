import 'package:flutter/material.dart';
import 'package:qed_task01/MainScreen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ThinKit',
      initialRoute: '/',
      routes: {
        '/': (context) => MainScreen()
      },
    );
  }
}