import 'package:flutter/material.dart';
import 'package:dart_date/dart_date.dart';

class DateWidget extends StatelessWidget {
  DateTime day;

  DateWidget({Key? key, required this.day}) : super(key: key);

  static List<String> koreanWeek = ['월', '화', '수', '목', '금', '토', '일'];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        children: [
          Text('${day.getDate}',
              style: TextStyle(
                  fontSize: 40,
                  color: (day.getWeekday == 7)
                      ? Colors.red
                      : (day.getWeekday == 6)
                          ? Colors.blue
                          : Colors.black,
                  shadows: const [Shadow(blurRadius: 15, color: Colors.black54)])),
          Text(koreanWeek[day.getWeekday - 1],
              style: TextStyle(
                  fontSize: 17,
                  color: (day.getWeekday == 7)
                      ? Colors.red
                      : (day.getWeekday == 6)
                          ? Colors.blue
                          : Colors.black,
                  shadows: const [Shadow(blurRadius: 15, color: Colors.black54)]))
        ],
      ),
    );
  }
}
