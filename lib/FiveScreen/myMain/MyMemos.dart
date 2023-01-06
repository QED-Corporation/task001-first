import 'package:flutter/material.dart';
import 'package:qed_task01/MemoTeamBox.dart';
import 'package:qed_task01/myBottomNavigator.dart';
import 'package:get/get.dart';
import '../../MainScreen.dart';

class MyMemos extends StatefulWidget {
  const MyMemos({Key? key}) : super(key: key);

  @override
  State<MyMemos> createState() => _MyMemosState();
}

class _MyMemosState extends State<MyMemos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 50),
            child: Column(
                children: [
              const Align(
                alignment: Alignment(-0.8, 0),
                child: CircleAvatar(backgroundImage: AssetImage('assets/profile.jpg'),
                radius: 32),
              ),
              MemoTeamBox(upText: 'Goals', borderColor: Colors.greenAccent),
              MemoTeamBox(
                  upText: 'Routine', borderColor: Colors.lightBlueAccent),
              MemoTeamBox(upText: 'Finance', borderColor: Colors.pinkAccent),
              MemoTeamBox(upText: 'Study', borderColor: Colors.lightBlue),
              const SizedBox(height: 15),
              ElevatedButton(
                  onPressed: () => debugPrint("adding"),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white70,
                      foregroundColor: Colors.black,
                      fixedSize: const Size(350, 20),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      side: const BorderSide(color: Colors.grey, width: 2)),
                  child: const Icon(Icons.add))
            ])),
        bottomNavigationBar: MyBottomNavigator(
            ontap: (index) => Get.offAll(MainScreen(state: index))));
  }
}
