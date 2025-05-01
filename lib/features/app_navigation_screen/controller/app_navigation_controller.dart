import 'package:get/get.dart';
import 'package:softvence_practice/features/app_navigation_screen/models/app_navigation_model.dart';

class AppNavigationController extends GetxController {
  Rx<AppNavigationModel> appNavigationModelObj = AppNavigationModel().obs;
}
