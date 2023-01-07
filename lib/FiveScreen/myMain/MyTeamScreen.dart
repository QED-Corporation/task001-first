import 'package:flutter/material.dart';
import 'package:qed_task01/DateAppBar.dart';
import '../../MainScreen.dart';
import '../../dataClasses/Team.dart';
import '../../myBottomNavigator.dart';
import 'package:get/get.dart';

class MyTeamScreen extends StatefulWidget {
  Team myTeam;
  MyTeamScreen({Key? key, required this.myTeam}) : super(key: key);

  @override
  State<MyTeamScreen> createState() => _MyTeamScreenState();
}

class _MyTeamScreenState extends State<MyTeamScreen> {
  Team? team;

  @override
  void initState() {// TODO: implement initState
    super.initState();
    team = widget.myTeam;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DataAppBar().getAppbar(),
      body: Text(team!.teamName),
      bottomNavigationBar: MyBottomNavigator(
        ontap: (index) => Get.offAll(MainScreen(state: index))),
    );
  }
}

