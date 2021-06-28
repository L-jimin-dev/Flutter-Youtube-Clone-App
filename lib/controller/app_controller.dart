import 'package:get/get.dart';

// 앱이 꺼지기 전까지 bottomNavigationBar가 유지되어야 함으로 GetxService를 사용한다.
class AppController extends GetxService{
  static AppController get to => Get.find();
  RxInt currentIndex = 0.obs;

  void changePageIndex(int index) {
    currentIndex(index);
  }
}