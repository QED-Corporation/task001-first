class Team{
  String teamName = "<UNKNOWN>";
  List<String> members = List.empty(growable: true);
  int adminIndex = 0;

  Team({required this.teamName, required this.members, this.adminIndex = 0});

  void addMember(String name){
    members.add(name);
  }

  void removeMember(String name){
    members.remove(name);
  }

  bool setAdmin(String name){ //성공 시 true, 실패 시 false 반환
    if(members.contains(name)){
      adminIndex = members.indexOf(name);
      return true;
    }
    else{
      return false;
    }
  }
}