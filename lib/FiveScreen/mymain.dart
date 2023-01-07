import 'dart:math';
import 'package:flutter/material.dart';
import 'package:qed_task01/FiveScreen/myMain/MyMemos.dart';
import 'package:qed_task01/FiveScreen/myMain/MyTeamScreen.dart';
import 'package:qed_task01/MemoTeamBox.dart';
import 'package:get/get.dart';
import 'package:qed_task01/dataClasses/Team.dart';
import 'package:qed_task01/dataClasses/TeamCategory.dart';
import 'package:qed_task01/dataClasses/MyTeams.dart';

class FoldControl extends GetxController {
  bool fold = false;

  void foldOrOpen() {
    fold = !fold;
    update();
  }
}

class MyMain extends StatelessWidget {
  const MyMain({Key? key}) : super(key: key);

  static List<Color> randomColors = [
    Colors.red,
    Colors.redAccent,
    Colors.blueAccent,
    Colors.lightBlue,
    Colors.orange,
    Colors.deepOrange,
    Colors.green,
    Colors.greenAccent,
    Colors.purple,
    Colors.pinkAccent,
    Colors.deepPurpleAccent
  ];

  @override
  Widget build(BuildContext context) {
    return Column(key: const ValueKey(1), children: [
      MemoTeamBox(
          upText: '나의 메모',
          borderColor: Colors.brown,
          ontap: () => Get.to(const MyMemos())),
      Expanded(
        child: ListView.builder(
            itemCount: MyTeams.myTeams.length,
            itemBuilder: (BuildContext context, int index) {
              TeamCategory category = MyTeams.myTeams[index];
              return Obx(
                () => Column(children: [
                  TextButton(
                    style: TextButton.styleFrom(foregroundColor: Colors.black),
                      onPressed: category.foldOrOpen,
                      child: Row(children: [Text("${category.name}"), (category.folded.value)? const Icon(Icons.arrow_drop_up) : const Icon(Icons.arrow_drop_down)])),
                  if (!category.folded.value)
                    for (Team team in category.teams)
                      MemoTeamBox(
                          upText: team.teamName,
                          borderColor: randomColors[
                              Random().nextInt(randomColors.length)],
                          downText:
                              '${team.members[team.adminIndex]} 외 ${team.members.length - 1}명',
                        ontap: () => Get.to(MyTeamScreen(myTeam: team))
                      ),
                ]),
              );
            }),
      ),
      Form(
        child: Stack(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: TextFormField(
                decoration: const InputDecoration(
              hintText: '해야 할 일이 있나요?',
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(100))),
            )),
          ),
          Positioned(
            key: const ValueKey(2),
            right: 26,
            bottom: 20,
            child: ElevatedButton(
                onPressed: () => debugPrint("Pressed!"),
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(14),
                    shape: const CircleBorder(),
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black45,
                    side: const BorderSide(color: Colors.black45)),
                child: const Icon(Icons.send, size: 35)),
          )
        ]),
      ),
    ]);
  }
}
