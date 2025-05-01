import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:softvence_practice/core/utils/size_utils.dart';
import 'package:softvence_practice/features/onboardingthree_screen/controller/onboardingthree_controller.dart';
import 'package:softvence_practice/routes/app_routes.dart';
import 'package:softvence_practice/theme/app_decoration.dart';
import 'package:softvence_practice/theme/custom_text_style.dart';
import 'package:softvence_practice/theme/theme_helper.dart';
import 'package:softvence_practice/widgets/custom_elevated_button.dart';

class OnboardingthreeScreen extends GetWidget<OnboardingthreeController> {
  const OnboardingthreeScreen({Key? key}) : super(key: key);
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.only(
                      top: 40.h,
                      right: 22.h,
                      bottom: 40.h,
                    ),
                    decoration: AppDecoration.column1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {
                            onTapTxtSkipone();
                          },
                          child: Text(
                            "lbl_skip".tr,
                            style: theme.textTheme.titleMedium,
                          ),
                        ),
                        SizedBox(height: 320.h),
                      ],
                    ),
                  ),
                  SizedBox(height: 18.h),
                  Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Text(
                      "lbl_relax_unwind".tr,
                      style: CustomTextStyles.headlineSmallMedium,
                    ),
                  ),
                  SizedBox(height: 24.h),
                  Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Text(
                      "msg_hope_to_take_the".tr,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                  SizedBox(height: 108.h),
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
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
                  ),
                  SizedBox(height: 24.h),
                  CustomElevatedButton(
                      text: "lbl_next".tr,
                      margin: EdgeInsets.symmetric(horizontal: 16.h),
                      onPressed: () {
                        onTapNext();
                      })
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Navigates to the locationScreen when the action is triggered.
  onTapTxtSkipone() {
    Get.toNamed(AppRoutes.locationScreen);

    /// Navigates to the onboardingScreen when the action is triggered.
  }

  onTapNext() {
    Get.toNamed(AppRoutes.locationScreen);
  }
}
