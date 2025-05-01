import 'package:get/get.dart';
import 'package:softvence_practice/features/loocation_screen/controller/location_controller.dart';

class LocationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LocationController());
  }
}
