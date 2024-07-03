import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:supermarket/core/theme/colors.dart';
import 'package:supermarket/core/theme/fonts.dart';

abstract class TextStylesApp {
  static TextStyle textStyleSemi26 = TextStyle(
    color: ColorApp.primary,
    fontSize: 26.sp,
    fontFamily: Fonts.gilroy,
    fontWeight: FontWeight.w600,
  );
  static TextStyle textStyleMedium16 = TextStyle(
    color: ColorApp.secondary,
    fontSize: 16.sp,
    fontFamily: Fonts.gilroy,
    fontWeight: FontWeight.w400,
  );
  static TextStyle textStyleSemi16 = TextStyle(
    color: ColorApp.secondary,
    fontSize: 16.sp,
    fontFamily: Fonts.gilroy,
    fontWeight: FontWeight.w600,
  );
  static TextStyle textStyleMedium18 = TextStyle(
    color: ColorApp.primary,
    fontSize: 18.sp,
    fontFamily: Fonts.gilroy,
    fontWeight: FontWeight.w400,
  );
  static TextStyle textStyleMedium14 = TextStyle(
    color: ColorApp.primary,
    fontSize: 14,
    fontFamily: Fonts.gilroy,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.70,
  );
}
