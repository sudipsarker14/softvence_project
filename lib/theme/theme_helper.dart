import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:softvence_practice/core/utils/pref_utils.dart';
import 'package:softvence_practice/core/utils/size_utils.dart';

LightCodeColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();

/// Helper class for managing themes and colors.
// ignore_for_file: must_be_immutable
class ThemeHelper {
// The current app theme
  var _appTheme = PrefUtils().getThemeData();
// A map of custom color themes supported by the app
  Map<String, LightCodeColors> _supportedCustomColor = {
    'lightCode': LightCodeColors(),
  };
// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'lightCode': ColorSchemes.lightCodeColorScheme,
  };

  /// Changes the app theme to [_newTheme].
  void changeTheme(String _newTheme) {
    PrefUtils().setThemeData(_newTheme);
    Get.forceAppUpdate();
  }

  /// Returns the lightCode colors for the current theme.
  LightCodeColors _getThemeColors() {
    return _supportedCustomColor[_appTheme] ?? LightCodeColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.lightCodeColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.h),
          ),
          elevation: 0,
          visualDensity: const VisualDensity(vertical: -4, horizontal: -4),
          padding: EdgeInsets.zero,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 4,
        space: 4,
        color: appTheme.whiteA700,
      ),
    );
  }

  /// Returns the lightCode colors for the current theme.
  LightCodeColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 16.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 14.fSize,
          fontFamily: 'Oxygen',
          fontWeight: FontWeight.w400,
        ),
        headlineMedium: TextStyle(
          color: colorScheme.onPrimaryContainer,
          fontSize: 28.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        headlineSmall: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 24.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        titleMedium: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 16.fSize,
          fontFamily: 'Oxygen',
          fontWeight: FontWeight.w700,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final lightCodeColorScheme = ColorScheme.light(
    primary: Color(0XFF7B4CDF),
    onPrimary: Color(0X19101828),
    onPrimaryContainer: Color(0XFFA382E9),
  );
}

/// Class containing custom colors for a lightCode theme.
class LightCodeColors {
// Black
  Color get black900 => Color(0XFF000000);
// DeepPurple
  Color get deepPurpleA200 => Color(0XFF7C34F3);
// Gray
  Color get gray300 => Color(0XFFE3E4E8);
  Color get gray600 => Color(0XFF848484);
  Color get gray800 => Color(0XFF4C4C4C);
  Color get gray80001 => Color(0XFF3C3D3F);
  Color get gray900 => Color(0XFF212327); // White
  Color get whiteA700 => Color(0XFFFFFFFF);
}
