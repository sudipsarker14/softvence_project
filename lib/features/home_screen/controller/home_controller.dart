import 'package:get/get.dart';
import 'package:softvence_practice/features/home_screen/models/home_model.dart';

class HomeController extends GetxController {
  Rx<HomeModel> homeModelObj = HomeModel().obs;
}
