import 'package:get/get.dart';
import 'package:softvence_practice/features/home_screen/controller/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}
