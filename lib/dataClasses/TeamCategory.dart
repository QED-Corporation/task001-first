import 'Team.dart';

class TeamCategory{
  String name = '<UNKNOWN>';
  List<Team> teams = List.empty(growable: true);
  bool folded = false;

  TeamCategory({required this.name, required this.teams, this.folded = false});

}