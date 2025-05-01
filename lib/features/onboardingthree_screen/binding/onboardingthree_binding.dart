import 'package:get/get.dart';
import 'package:softvence_practice/features/onboardingthree_screen/controller/onboardingthree_controller.dart';

class OnboardingthreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnboardingthreeController());
  }
}
