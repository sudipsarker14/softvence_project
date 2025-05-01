import 'dart:ui';

import 'package:flutter/src/painting/text_style.dart';
import 'package:softvence_practice/core/utils/size_utils.dart';
import 'package:softvence_practice/theme/theme_helper.dart';

extension on TextStyle {
  TextStyle get poppins {
    return copyWith(fontFamily: 'Popins');
  }
}

class CustomTextStyles {
  static get bodyMediumPoppins => theme.textTheme.bodyMedium!.poppins;
  static TextStyle get headlineMediumWhiteA700 =>
      theme.textTheme.headlineMedium!.copyWith(color: appTheme.whiteA700);
  static TextStyle get headlineMediumWhiteA700SemiBold =>
      theme.textTheme.headlineMedium!
          .copyWith(color: appTheme.whiteA700, fontWeight: FontWeight.w600);
  static TextStyle get headlineSmallMedium =>
      theme.textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.w500);

  static TextStyle get titleMediumPoppins =>
      theme.textTheme.titleMedium!.poppins
          .copyWith(fontWeight: FontWeight.w600);
  static TextStyle get titleMediumPoppinsMedium =>
      theme.textTheme.titleMedium!.poppins
          .copyWith(fontSize: 18.fSize, fontWeight: FontWeight.w500);
}
