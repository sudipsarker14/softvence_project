import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:softvence_practice/core/utils/size_utils.dart';
import 'package:softvence_practice/features/app_navigation_screen/controller/app_navigation_controller.dart';
import 'package:softvence_practice/routes/app_routes.dart';

class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFFFFFFF),
      body: SafeArea(
        child: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(color: Color(0xFFFFFFFF)),
                child: Column(
                  children: [
                    SizedBox(height: 10.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.h),
                      child: Text(
                        "App Navigation",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFFe00020),
                          fontSize: 20.fSize,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Padding(
                      padding: EdgeInsets.only(left: 20.h),
                      child: Text(
                        "Check your app's UI from the below demo screens of your app.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0XFF888888),
                          fontSize: 16.fSize,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(height: 5.h),
                    Divider(
                      height: 1.h,
                      thickness: 1.h,
                      color: Color(0XFF000000),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(color: Color(0XFFFFFFFF)),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          screenTitle: "OnboardingOne",
                          onTapScreenTitle: () => onTapScreenTitle(
                            AppRoutes.onboardingoneScreen,
                          ),
                        ),
                        _buildScreenTitle(
                          screenTitle: "OnboardingTwo",
                          onTapScreenTitle: () => onTapScreenTitle(
                            AppRoutes.onboardingtwoScreen,
                          ),
                        ),
                        _buildScreenTitle(
                          screenTitle: "OnboardingThree",
                          onTapScreenTitle: () => onTapScreenTitle(
                            AppRoutes.onboardingthreeScreen,
                          ),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Location",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.locationScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Home",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.homeScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle({
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle?.call();
      },
      child: Container(
        decoration: BoxDecoration(color: Color(0XFFFFFFFF)),
        child: Column(
          children: [
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                screenTitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 10.h),
            SizedBox(height: 5.h),
            Divider(height: 1.h, thickness: 1.h, color: Color(0XFF888888)),
          ],
        ),
      ),
    );
  }

  // Common click event
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}
