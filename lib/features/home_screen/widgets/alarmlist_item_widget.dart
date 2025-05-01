// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:softvence_practice/core/app_export.dart';
import 'package:softvence_practice/features/home_screen/controller/home_controller.dart';
import 'package:softvence_practice/features/home_screen/models/alarmlist_item_model.dart';
import 'package:softvence_practice/widgets/custom_switch.dart';

class AlarmlistItemWidget extends StatelessWidget {
  AlarmlistItemWidget(this.alarmlistItemModelObj, {Key? key}) : super(key: key);
  AlarmlistItemModel alarmlistItemModelObj;
  var controller = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 24.h),
      decoration: AppDecoration.fillGray80001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorders,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => Text(
              alarmlistItemModelObj.time!.value,
              style: theme.textTheme.headlineSmall,
            ),
          ),
          Spacer(),
          Obx(
            () => Text(
              alarmlistItemModelObj.fri21mar2025!.value,
              style: CustomTextStyles.bodyMediumPoppins,
            ),
          ),
          Obx(
            () => CustomSwitch(
              margin: EdgeInsets.only(left: 8.h),
              value: alarmlistItemModelObj.isSelectedSwitch!.value,
              onChange: (value) {
                alarmlistItemModelObj.isSelectedSwitch!.value = value!;
              },
            ),
          ),
        ],
      ),
    );
  }
}
