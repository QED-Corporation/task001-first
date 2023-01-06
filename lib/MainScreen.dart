import 'package:flutter/material.dart';
import 'package:qed_task01/myBottomNavigator.dart';
import 'DateAppBar.dart';
import 'package:qed_task01/FiveScreen/Todo.dart';
import 'package:qed_task01/FiveScreen/calendar.dart';
import 'package:qed_task01/FiveScreen/mymain.dart';
import 'package:qed_task01/FiveScreen/Friends.dart';
import 'package:qed_task01/FiveScreen/license.dart';

class MainScreen extends StatefulWidget {
  int state;
  MainScreen({Key? key, this.state = 2}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int state = 2;

  @override
  void initState(){
    super.initState();
    state = widget.state;
  }

  void stateSet(int index){
    setState(() {
      state = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DataAppBar().getAppbar(),
      body: (state == 0)
          ? const Todo()
          : (state == 1)
              ? const Calendar()
              : (state == 2)
                  ? const MyMain()
                  : (state == 3)
                      ? const Friends()
                      : const License(),
      bottomNavigationBar: MyBottomNavigator(ontap: stateSet),
    );
  }
}
