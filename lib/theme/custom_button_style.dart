import 'package:flutter/material.dart';
import 'package:softvence_practice/theme/theme_helper.dart';
import '../core/app_export.dart';

class CustomButtonStyles {
  static ButtonStyle get fillGray => ElevatedButton.styleFrom(
        backgroundColor: appTheme.gray800,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.h)),
        elevation: 0,
        padding: EdgeInsets.zero,
      );
  static ButtonStyle get fillGrayTL4 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.gray80001,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.h)),
        elevation: 0,
        padding: EdgeInsets.zero,
      );
// text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.zero),
        side: MaterialStateProperty.all<BorderSide>(
          BorderSide(color: Colors.transparent),
        ),
      );
}
