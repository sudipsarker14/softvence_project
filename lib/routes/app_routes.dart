// ignore_for_file: must_be_immutable
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:softvence_practice/features/app_navigation_screen/app_navigation_screen.dart';
import 'package:softvence_practice/features/app_navigation_screen/binding/app_navifation_binding.dart';
import 'package:softvence_practice/features/home_screen/binding/home_binding.dart';
import 'package:softvence_practice/features/home_screen/home_screen.dart';
import 'package:softvence_practice/features/loocation_screen/binding/location_binding.dart';
import 'package:softvence_practice/features/loocation_screen/location_screen.dart';
import 'package:softvence_practice/features/onboardingone_screen/Onboardingone_screen.dart';
import 'package:softvence_practice/features/onboardingone_screen/binding/onboardingone_binding.dart';
import 'package:softvence_practice/features/onboardingthree_screen/Onboardingthree_screen.dart';
import 'package:softvence_practice/features/onboardingthree_screen/binding/onboardingthree_binding.dart';
import 'package:softvence_practice/features/onboardingtwo_screen/Onboardingtwo_screen.dart';
import 'package:softvence_practice/features/onboardingtwo_screen/binding/onboardingtwo_binding.dart';

class AppRoutes {
  static const String onboardingoneScreen = '/onboardingone_screen';
  static const String onboardingtwoScreen = '/onboardingtwo_screen';
  static const String onboardingthreeScreen = '/onboardingthree_screen';
  static const String locationScreen = '/location_screen';
  static const String homeScreen = '/home_screen';
  static const String appNavigationScreen = '/app_navigation_screen';
  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: onboardingoneScreen,
      page: () => OnboardingoneScreen(),
      bindings: [OnboardingoneBinding()],
    ),
    GetPage(
      name: onboardingtwoScreen,
      page: () => OnboardingtwoScreen(),
      bindings: [OnboardingtwoBinding()],
    ),
    GetPage(
      name: onboardingthreeScreen,
      page: () => OnboardingthreeScreen(),
      bindings: [OnboardingthreeBinding()],
    ),
    GetPage(
      name: locationScreen,
      page: () => LocationScreen(),
      bindings: [LocationBinding()],
    ),
    GetPage(
      name: homeScreen,
      page: () => HomeScreen(),
      bindings: [HomeBinding()],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [AppNavifationBinding()],
    ),
    GetPage(
      name: initialRoute,
      page: () => OnboardingoneScreen(),
      bindings: [OnboardingoneBinding()],
    ),
  ];
}
