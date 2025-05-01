// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:softvence_practice/core/utils/size_utils.dart';
import 'package:softvence_practice/theme/theme_helper.dart';

class CustomSwitch extends StatelessWidget {
  CustomSwitch({
    Key? key,
    required this.onChange,
    this.alignment,
    this.value,
    this.width,
    this.height,
    this.margin,
  }) : super(key: key);
  final Alignment? alignment;
  bool? value;
  final Function(bool) onChange;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? margin;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: margin,
      child: alignment != null
          ? Align(
              alignment: alignment ?? Alignment.center,
              child: switchWidget,
            )
          : switchWidget,
    );
  }

  Widget get switchWidget => FlutterSwitch(
        value: value ?? false,
        height: 16.h,
        width: 32.h,
        toggleSize: 12,
        borderRadius: 8.h,
        activeColor: theme.colorScheme.primary,
        activeToggleColor: appTheme.whiteA700,
        inactiveColor: appTheme.gray300,
        inactiveToggleColor: appTheme.whiteA700,
        onToggle: (value) {
          onChange(value);
        },
      );
}
