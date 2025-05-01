import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:softvence_practice/core/utils/image_constant.dart';
import 'package:softvence_practice/core/utils/size_utils.dart';
import 'package:softvence_practice/features/home_screen/controller/home_controller.dart';
import 'package:softvence_practice/features/home_screen/models/alarmlist_item_model.dart';
import 'package:softvence_practice/features/home_screen/widgets/alarmlist_item_widget.dart';
import 'package:softvence_practice/theme/app_decoration.dart';
import 'package:softvence_practice/theme/custom_button_style.dart';
import 'package:softvence_practice/theme/custom_text_style.dart';
import 'package:softvence_practice/theme/theme_helper.dart';
import 'package:softvence_practice/widgets/custom_elevated_button.dart';
import 'package:softvence_practice/widgets/custom_image_view.dart';

class HomeScreen extends GetWidget<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.gray900,
      body: SafeArea(
        child: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.only(left: 16.h, top: 76.h, right: 16.h),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: SizedBox(
                          width: double.maxFinite,
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 32.h),
                                child: Text(
                                  "msg_selected_location".tr,
                                  style: CustomTextStyles.titleMediumPoppins,
                                ),
                              ),
                              SizedBox(height: 18.h),
                              Container(
                                width: 254.h,
                                margin: EdgeInsets.only(left: 32.h),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant.imgLinkedinWhiteA700,
                                      height: 24.h,
                                      width: 24.h,
                                      margin: EdgeInsets.only(top: 10.h),
                                    ),
                                    SizedBox(width: 8.h),
                                    Align(
                                      alignment: Alignment.center,
                                      child: SizedBox(
                                        width: 218.h,
                                        child: Text(
                                          "msg_79_regent_s_park".tr,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: theme.textTheme.bodyLarge!
                                              .copyWith(height: 1.50),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 6.h),
                              CustomElevatedButton(
                                height: 48.h,
                                width: 264.h,
                                text: "lbl_add_alarm".tr,
                                margin: EdgeInsets.only(left: 32.h),
                                buttonStyle: CustomButtonStyles.fillGrayTL4,
                                buttonTextStyle: theme.textTheme.bodyLarge!
                                    .copyWith(height: 1.50),
                              ),
                              SizedBox(height: 44.h),
                              Text(
                                "lbl_alarms".tr,
                                style:
                                    CustomTextStyles.titleMediumPoppinsMedium,
                              ),
                              SizedBox(height: 16.h),
                              _buildAlarmList(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: _buildNavigationBar(),
    );
  }

  /// Section Widget
  Widget _buildAlarmList() {
    return Expanded(
      child: Obx(
        () => ListView.separated(
          padding: EdgeInsets.zero,
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(height: 10.h);
          },
          itemCount:
              controller.homeModelObj.value.alarmlistItemList.value.length,
          itemBuilder: (context, index) {
            AlarmlistItemModel model =
                controller.homeModelObj.value.alarmlistItemList.value[index];
            return AlarmlistItemWidget(model);
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNavigationBar() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 10.h),
      decoration: AppDecoration.fillGray,
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        SizedBox(width: 110.h, child: Divider()),
        SizedBox(width: 110.h, child: Divider(color: appTheme.black900)),
      ]),
    );
  }
}

