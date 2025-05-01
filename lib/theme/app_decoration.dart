import 'package:flutter/material.dart';
import 'package:softvence_practice/core/utils/image_constant.dart';
import 'package:softvence_practice/core/utils/size_utils.dart';
import 'package:softvence_practice/theme/theme_helper.dart';
import '../core/app_export.dart';

class AppDecoration {
// Fill decorations
  static BoxDecoration get fillGray => BoxDecoration(color: appTheme.gray900);
  static BoxDecoration get fillGray80001 =>
      BoxDecoration(color: appTheme.gray80001);
// Column decorations
  static BoxDecoration get column1 => BoxDecoration(
        image: DecorationImage(
          image: AssetImage(ImageConstant.imgMaskGroup),
          fit: BoxFit.fill,
        ),
      );
}

class BorderRadiusStyle {
// Custom borders
  static BorderRadius get customBorderBL40 =>
      BorderRadius.vertical(bottom: Radius.circular(40.h));
// Rounded borders
  static BorderRadius get roundedBorders => BorderRadius.circular(8.h);
}
