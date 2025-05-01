import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:softvence_practice/core/app_export.dart';
import 'package:softvence_practice/core/utils/image_constant.dart';
import 'package:softvence_practice/core/utils/size_utils.dart';
import 'package:softvence_practice/features/loocation_screen/controller/location_controller.dart';
import 'package:softvence_practice/theme/custom_button_style.dart';
import 'package:softvence_practice/theme/custom_text_style.dart';
import 'package:softvence_practice/theme/theme_helper.dart';
import 'package:softvence_practice/widgets/custom_elevated_button.dart';

class LocationScreen extends GetWidget<LocationController> {
  const LocationScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.gray900,
      body: SafeArea(
        child: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.only(bottom: 62.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 68.h),
                  Container(
                    width: 276.h,
                    margin: EdgeInsets.only(left: 16.h),
                    child: Text(
                      "msg_welcome_your_personalized".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.headlineMediumWhiteA700SemiBold
                          .copyWith(height: 1.21),
                    ),
                  ),
                  SizedBox(height: 14.h),
                  Container(
                    width: 276.h,
                    margin: EdgeInsets.only(left: 16.h),
                    child: Text(
                      "msg_allow_us_to_sync".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodyLarge!.copyWith(height: 1.50),
                    ),
                  ),
                  SizedBox(height: 40.h),
                  CustomImageView(
                    imagePath: ImageConstant.imgMorning2Transformed,
                    height: 308.h,
                    width: double.maxFinite,
                  ),
                  _buildLocationButtons(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLocationButtons() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        children: [
          CustomElevatedButton(
            text: "msg_use_current_location".tr,
            rightIcon: Container(
              margin: EdgeInsets.only(left: 8.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgLinkedin,
                height: 24.h,
                width: 24.h,
                fit: BoxFit.contain,
              ),
            ),
            buttonStyle: CustomButtonStyles.fillGray,
            buttonTextStyle: theme.textTheme.bodyLarge!,
            onPressed: () {
              onTapUsecurrent();
            },
          ),
          SizedBox(height: 6.h),
          CustomElevatedButton(
              text: "lbl_home".tr,
              buttonStyle: CustomButtonStyles.fillGray,
              buttonTextStyle: theme.textTheme.bodyLarge!,
              onPressed: () {
                onTapHome();
              }),
        ],
      ),
    );
  }

  /// Navigates to the homescreen when the action is triggered. onTapUsecurrent() {
  onTapUsecurrent() {
    Get.toNamed(AppRoutes.homeScreen);

    /// Navigates to the homescreen when the action is triggered. onTapHome() {
  }

  onTapHome() {
    Get.toNamed(AppRoutes.homeScreen);
  }
}
