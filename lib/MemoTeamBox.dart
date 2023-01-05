import 'package:flutter/material.dart';

class MemoTeamBox extends StatelessWidget {
  String upText;
  String? downText;
  Color borderColor;
  void Function()? ontap;

  MemoTeamBox(
      {Key? key,
        required this.upText,
        this.downText,
        required this.borderColor,
        this.ontap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap, //추가 예정
      child: Container(
          height: 100,
          width: double.infinity,
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: borderColor, width: 5),
              borderRadius: BorderRadius.circular(17),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black, offset: Offset(5, 5), blurRadius: 10)
              ]),
          child: (downText == null)
              ? Text(upText, style: const TextStyle(fontSize: 30))
              : Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(upText, style: const TextStyle(fontSize: 23)),
                Text(
                  downText!,
                  style: const TextStyle(
                      fontSize: 15, color: Colors.black54),
                  textAlign: TextAlign.end,
                )
              ])),
    );
  }
}