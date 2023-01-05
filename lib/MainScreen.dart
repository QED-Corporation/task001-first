import 'package:flutter/material.dart';
import 'MemoTeamBox.dart';
import 'DateAppBar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return DateAppBarScreen(
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
          MemoTeamBox(upText: "나의 메모", borderColor: Colors.blueAccent),
          MemoTeamBox(
              upText: "영화보러 갈 파티원",
              borderColor: Colors.orange,
              downText: "조영유 외 70명"),
          Form(
            child: Stack(children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                child: TextFormField(
                    decoration: const InputDecoration(
                  hintText: '해야 할 일이 있나요?',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(100))),
                )),
              ),
              Positioned(
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
          )
        ]));
  }
}
