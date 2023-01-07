import 'package:flutter/material.dart';

class MyBottomNavigator extends StatelessWidget {
  Function(int) ontap;
  int selected = 2;

  MyBottomNavigator({Key? key, required this.ontap, this.selected = 2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      currentIndex: selected,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.checklist), label: "To-do"),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today), label: "Calendar"),
          BottomNavigationBarItem(
              icon: Icon(Icons.circle_outlined,
                  color: Colors.blue,
                  size: 57,
                  shadows: [Shadow(color: Colors.black54, blurRadius: 20)]),
              label: "Team"),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: "Friends"),
          BottomNavigationBarItem(
              icon: Icon(Icons.perm_identity), label: "License"),
        ],
      onTap: ontap
    );
  }
}
