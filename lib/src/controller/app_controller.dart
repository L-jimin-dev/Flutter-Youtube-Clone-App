import 'package:get/get.dart';
import 'package:jimin_youtube_clone/src/components/youtube_bottom_sheet.dart';

enum RouteName {
  Home,
  Explore,
  Add,
  Subs,
  Library
}

// 앱이 꺼지기 전까지 bottomNavigationBar가 유지되어야 함으로 GetxService를 사용한다.
class AppController extends GetxService{
  static AppController get to => Get.find();
  RxInt currentIndex = 0.obs;

  void changePageIndex(int index) {
    if (RouteName.values[index] == RouteName.Add) {
      _showBottomSheet();
    } else {
      currentIndex(index);
    }
  }

  void _showBottomSheet() {
    Get.bottomSheet(
        YoutubeBottomSheet(),
    );
  }
}