import 'package:get/get.dart';
import 'package:softvence_practice/core/utils/pref_utils.dart';

class InitialBindings extends Bindings {
  void dependencies() {
    Get.put(PrefUtils());
  }
}
