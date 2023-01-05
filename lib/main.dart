import 'package:flutter/material.dart';
import 'package:qed_task01/MainScreen.dart';
import 'TodoScreen.dart';
import 'CalendarScreen.dart';
import 'FriendsScreen.dart';
import 'LicenseScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ThinKit',
      initialRoute: '/',
      routes: {
        '/': (context) => const MainScreen(),
        '/todo': (context) => const TodoScreen(),
        '/calendar' : (context) => const CalendarScreen(),
        '/friends' : (context) => const FriendsScreen(),
        '/license' : (context) => const LicenseScreen(),
      },
    );
  }
}