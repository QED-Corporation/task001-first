import 'package:flutter/material.dart';
import 'package:qed_task01/MainScreen.dart';
import 'TodoScreen.dart';
import 'CalendarScreen.dart';
import 'FriendsScreen.dart';
import 'LicenseScreen.dart';

class MyBottomNavigator extends StatelessWidget {
  const MyBottomNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.checklist), label: "todo"),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today), label: "calendar"),
          BottomNavigationBarItem(
              icon: Icon(Icons.circle_outlined,
                  color: Colors.blue,
                  size: 57,
                  shadows: [Shadow(color: Colors.black54, blurRadius: 20)]),
              label: "main"),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: "friends"),
          BottomNavigationBarItem(
              icon: Icon(Icons.perm_identity), label: "license"),
        ],
      onTap: (int index){
          switch(index){ //이쪽이 완전히 미완성작입니다. 겉보기에는 멀쩡하지만 stack이 끝없이 쌓이므로 본 문제를 해결해야 합니다.
            case 0:
              Navigator.pushNamed(context, '/todo');
              break;
            case 1:
              Navigator.pushNamed(context, '/calendar');
              break;
            case 2:
              Navigator.pushNamed(context, '/');
              break;
            case 3:
              Navigator.pushNamed(context, '/friends');
              break;
            case 4:
              Navigator.pushNamed(context, '/license');
              break;
          }
      }
    );
  }
}
