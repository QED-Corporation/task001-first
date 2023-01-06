import 'package:flutter/material.dart';
import 'package:dart_date/dart_date.dart';

class DataAppBar {

  String getKoreanWeek(int week) {
    switch (week) {
      case 1:
        return "월요일";
      case 2:
        return "화요일";
      case 3:
        return "수요일";
      case 4:
        return "목요일";
      case 5:
        return "금요일";
      case 6:
        return "토요일";
      case 7:
        return "일요일";
      default:
        return "<ERROR>";
    }
  }

  final DateTime today = DateTime.now().addHours(9);

  AppBar getAppbar() => AppBar(
      centerTitle: true,
      backgroundColor: Colors.white,
      title: Text.rich(TextSpan(
        text: today.format('M월 d일 '),
        style: const TextStyle(fontSize: 30, color: Colors.black),
        // default text style
        children: <TextSpan>[
          TextSpan(
              text: getKoreanWeek(today.weekday),
              style: TextStyle(
                  fontSize: 24,
                  color: (today.weekday == 7)
                      ? Colors.red
                      : (today.weekday == 6)
                      ? Colors.blue
                      : Colors.black))
        ],
      )));
}
