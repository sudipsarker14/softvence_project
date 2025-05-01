import 'package:get/get.dart';
import 'package:softvence_practice/features/app_navigation_screen/controller/app_navigation_controller.dart';

class AppNavifationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AppNavigationController());
  }
}
