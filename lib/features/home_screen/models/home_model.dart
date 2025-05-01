import 'package:get/get.dart';
import 'package:softvence_practice/features/home_screen/models/alarmlist_item_model.dart';

class HomeModel {
  Rx<List<AlarmlistItemModel>> alarmlistItemList = Rx([
    AlarmlistItemModel(
      time: "lbl_7_10_pm".tr.obs,
      fri21mar2025: "lbl_fri_21_mar_2025".tr.obs,
    ),
    AlarmlistItemModel(
      time: "lbl_6_55_pm".tr.obs,
      fri21mar2025: "lbl_fri_28_mar_2025".tr.obs,
    ),
    AlarmlistItemModel(
      time: "lbl_7_00_pm".tr.obs,
      fri21mar2025: "lbl_apr_04_mar_2025".tr.obs,
    ),
  ]);
}