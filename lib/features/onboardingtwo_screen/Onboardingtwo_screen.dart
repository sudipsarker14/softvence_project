import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:softvence_practice/core/utils/image_constant.dart';
import 'package:softvence_practice/core/utils/size_utils.dart';
import 'package:softvence_practice/features/onboardingtwo_screen/controller/onboardingtwo_controller.dart';
import 'package:softvence_practice/routes/app_routes.dart';
import 'package:softvence_practice/theme/theme_helper.dart';
import 'package:softvence_practice/widgets/custom_elevated_button.dart';
import 'package:softvence_practice/widgets/custom_image_view.dart';

class OnboardingtwoScreen extends GetWidget<OnboardingtwoController> {
  const OnboardingtwoScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.gray900,
      body: SafeArea(
        child: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: SizedBox(
              height: SizeUtils.height,
              width: double.maxFinite,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(
                    height: 428.h,
                    width: double.maxFinite,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgMorningWalkGif,
                          height: 428.h,
                          width: double.maxFinite,
                          radius: BorderRadius.vertical(
                            bottom: Radius.circular(40.h),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: GestureDetector(
                            onTap: () {
                              onTapTxtSkipText();
                            },
                            child: Padding(
                              padding: EdgeInsets.only(top: 40.h, right: 22.h),
                              child: Text(
                                "lbl_skip".tr,
                                style: theme.textTheme.titleMedium,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    "msg_effortless_automatic".tr,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.headlineMedium!.copyWith(
                      height: 1.21,
                    ),
                  ),
                  SizedBox(height: 18.h),
                  SizedBox(
                    width: 316.h,
                    child: Text(
                      "msg_no_need_to_set_alarms".tr,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                  SizedBox(height: 72.h),
                  SizedBox(
                    height: 8.h,
                    child: AnimatedSmoothIndicator(
                      activeIndex: 0,
                      count: 3,
                      effect: ScrollingDotsEffect(
                        spacing: 6,
                        activeDotColor: appTheme.deepPurpleA200,
                        dotColor: appTheme.gray600,
                        dotHeight: 8.h,
                        dotWidth: 8.h,
                      ),
                    ),
                  ),
                  SizedBox(height: 34.h),
                  CustomElevatedButton(
                    text: "lbl_next".tr,
                    margin: EdgeInsets.symmetric(horizontal: 16.h),
                    onPressed: () {
                      onTapNextButton();
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Navigates to the locationScreen when the action is triggered.
  onTapTxtSkipText() {
    Get.toNamed(AppRoutes.locationScreen);

    /// Navigates to the onboardingScreen when the action is triggered.
  }

  onTapNextButton() {
    Get.toNamed(AppRoutes.onboardingtwoScreen);
  }
}
