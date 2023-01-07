import 'Team.dart';
import 'package:get/get.dart';

class TeamCategory extends GetxController{
  String name = '<UNKNOWN>';
  List<Team> teams = List.empty(growable: true);
  dynamic folded = false.obs;

  TeamCategory({required this.name, required this.teams});

  void foldOrOpen() => folded.value = !folded.value;

}