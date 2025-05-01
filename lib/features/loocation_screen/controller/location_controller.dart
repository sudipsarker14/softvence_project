import 'package:get/get.dart';
import 'package:softvence_practice/features/loocation_screen/models/location_model.dart';

class LocationController extends GetxController {
  Rx<LocationModel> locationModelObj = LocationModel().obs;
}
