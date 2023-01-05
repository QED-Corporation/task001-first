import 'package:flutter/material.dart';
import 'DateAppBar.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({Key? key}) : super(key: key);

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  @override
  Widget build(BuildContext context) {
    return DateAppBarScreen(
        body: const Text("Todo"));
  }
}