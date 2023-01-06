import 'Team.dart';
import 'TeamCategory.dart';

class MyTeams {
  static List<TeamCategory> myTeams = [
    TeamCategory(name: '가족', teams: [
      Team(teamName: "혜리네집", members: ['조진걸', '전금자', '조영유', '조현민', '조혜리'])
    ]),
    TeamCategory(
      name: '직장',
      teams: [
        Team(teamName: 'Avengers', members: [
          'Tony Stark',
          'Captain America',
          'HawkEye',
          'Black Widow',
          'Hulk',
          'Thor',
          'SpiderMan',
          'Doctor Strange'
        ]),
        Team(teamName: '밀짚모자 해적단', members: [
          '루피',
          '조로',
          '나미',
          '상디',
          '우솝',
          '비비',
          '쵸파',
          '로빈',
          '프랑키',
          '브룩',
          '징베'
        ]),
        Team(teamName: 'QED', members: ['노경민', '조영유', '장준영', '김건호'])
      ],
    )
  ];
}
