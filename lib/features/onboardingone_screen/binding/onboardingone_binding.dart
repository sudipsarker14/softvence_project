import 'package:get/get.dart';
import 'package:softvence_practice/features/onboardingone_screen/controller/onboardingone_controller.dart';

class OnboardingoneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnboardingoneController());
  }
}
