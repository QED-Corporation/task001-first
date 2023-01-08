import 'package:flutter/material.dart';
import 'package:qed_task01/DateAppBar.dart';
import 'package:qed_task01/MemoTeamBox.dart';
import '../../MainScreen.dart';
import '../../dataClasses/Team.dart';
import '../../myBottomNavigator.dart';
import 'package:get/get.dart';
import 'package:dart_date/dart_date.dart';
import 'DateWidget.dart';

class MyTeamScreen extends StatefulWidget {
  Team myTeam;
  MyTeamScreen({Key? key, required this.myTeam}) : super(key: key);

  @override
  State<MyTeamScreen> createState() => _MyTeamScreenState();
}

class _MyTeamScreenState extends State<MyTeamScreen> {
  Team? team;
  DateTime now = DateTime.now().addHours(9);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    team = widget.myTeam;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DataAppBar().getAppbar(),
      body: Column(children: [
        MemoTeamBox(
            upText: team!.teamName,
            borderColor: Colors.white,
            downText:
                '${team!.members[team!.adminIndex]} 외 ${team!.members.length - 1}명'),
        const SizedBox(height: 20),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: const [
          Icon(Icons.format_list_bulleted, size: 40), //나중에 기능 붙이고 싶으면 GestureDetector로 감싸주면 됩니다.
          Icon(Icons.notifications_none, size: 40),
          Icon(Icons.groups_rounded, size: 40),
          Icon(Icons.group_add, size: 40)
        ]),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: [
            for (int i = 0; i < DateTime(now.year, now.month + 1, 0).getDate; i++)
              DateWidget(day: DateTime(now.year, now.month, 1).addDays(i))
          ],),
        )
      ]),
      bottomNavigationBar: MyBottomNavigator(
          ontap: (index) => Get.offAll(MainScreen(state: index))),
    );
  }
}
