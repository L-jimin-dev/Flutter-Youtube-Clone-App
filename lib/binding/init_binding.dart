import 'package:get/get.dart';
import 'package:jimin_youtube_clone/controller/app_controller.dart';

class InitBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(AppController());
  }
}