import 'package:get/get.dart';
import 'package:softvence_practice/features/onboardingtwo_screen/controller/onboardingtwo_controller.dart';


class OnboardingtwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnboardingtwoController());
  }
}
