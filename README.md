# qed_task01

Task#001 쌩 초안

## Getting Started

 Task#001의 초안입니다. 주목하실 만한 점은 lib 몰더 안에 있는 여러 파일일 것입니다. 그 외에도 깐 게 여러가지 있는데 그건 제가 개인적인 연습을 위해 깐 거니까 신경 안 쓰셔도 돼요! 아마 폴더들이 굉장히 난잡하게 정리되어 있어서 조금 정리를 해야 할 예정입니다. 각 클래스들은 다음과 같습니다.
 
 CalendarScreen.dart
FriendsScreen.dart
LicenseScreen.dart
TodoScreen.dart 아직 task001에서 만들지 않을 화면들입니다.

DateAppBarScreen.dart 날씨 앱바가 있는 클래스의 Scaffold 위젯입니다. 날씨 앱바가 필요하다면 이 클래스를 body만 정의하면서 이용하면 됩니다.

MainScreen.dart mainScreen을 불완전하게나마 만들어봤습니다.

MemoTeamBox.dart 메모나 팀에 관한 정보를 저장하는 박스를 하나의 Refactorable한 위젯으로 만들었습니다.
main.dart
myBottomNavigator.dart 바톰네비게이션바를 하나의 위젯으로 만들었습니다. 이 부분이 큰 수정이 필요한 부분입니다. 해당 위젯으로 버튼을 계속 누르면, 멀쩡히 계속 작동하는 것처럼 보이지만, 화면 창 stack이 끝없이 쌓인다는 문제가 있습니다. 같이 해당 문제 없이 페이지가 이동할 수 있는 방법을 고안하면 좋을 것 같습니다.
