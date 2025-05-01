import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:softvence_practice/core/utils/image_constant.dart';
import 'package:softvence_practice/core/utils/size_utils.dart';
import 'package:softvence_practice/features/onboardingone_screen/controller/onboardingone_controller.dart';
import 'package:softvence_practice/routes/app_routes.dart';
import 'package:softvence_practice/theme/custom_text_style.dart';
import 'package:softvence_practice/theme/theme_helper.dart';
import 'package:softvence_practice/widgets/custom_elevated_button.dart';
import 'package:softvence_practice/widgets/custom_image_view.dart';

class OnboardingoneScreen extends GetWidget<OnboardingoneController> {
  const OnboardingoneScreen({Key? key}) : super(key: key);
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
                  SizedBox(
                    height: 428.h,
                    width: double.maxFinite,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgMorninggif11,
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
                  SizedBox(height: 14.h),
                  Container(
                    width: 260.h,
                    margin: EdgeInsets.only(left: 16.h),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "lbl_sync".tr,
                            style: theme.textTheme.headlineMedium,
                          ),
                          TextSpan(
                            text: "msg_with_nature_s_rhythm".tr,
                            style: CustomTextStyles.headlineMediumWhiteA700,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Container(
                    width: 306.h,
                    margin: EdgeInsets.only(left: 14.h),
                    child: Text(
                      "msg_experience_a_peaceful".tr,
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                  SizedBox(height: 28.h),
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
                        onTapNextButton();
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
  onTapTxtSkipText() {
    Get.toNamed(AppRoutes.locationScreen);

    /// Navigates to the onboardingScreen when the action is triggered.
  }

  onTapNextButton() {
    Get.toNamed(AppRoutes.onboardingtwoScreen);
  }
}
