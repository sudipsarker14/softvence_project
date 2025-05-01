import 'package:get/get.dart';

class AlarmlistItemModel {
  AlarmlistItemModel({
    this.time,
    this.fri21mar2025,
    this.isSelectedSwitch,
    this.id,
  }) {
    time = time ?? Rx("lbl_7_10_pm".tr);
    fri21mar2025 = fri21mar2025 ?? Rx("lbl_7_10_pm".tr);
    isSelectedSwitch = isSelectedSwitch ?? Rx(false);
    id = id ?? Rx("");
  }

  Rx<String>? time;
  Rx<String>? fri21mar2025;

  Rx<bool>? isSelectedSwitch;
  Rx<String>? id;
}
