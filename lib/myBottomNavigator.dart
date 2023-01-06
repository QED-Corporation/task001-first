import 'package:flutter/material.dart';

class MyBottomNavigator extends StatelessWidget {
  Function(int) ontap;

  MyBottomNavigator({Key? key, required this.ontap}) : super(key: key);

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
              label: "team"),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: "friends"),
          BottomNavigationBarItem(
              icon: Icon(Icons.perm_identity), label: "license"),
        ],
      onTap: ontap
    );
  }
}
