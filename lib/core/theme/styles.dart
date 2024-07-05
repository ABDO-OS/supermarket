import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:supermarket/core/theme/colors.dart';
import 'package:supermarket/core/theme/fonts.dart';

abstract class TextStylesApp {
  // Style for text with 26sp size
  static TextStyle textStyleSemi26 = TextStyle(
    color: ColorApp.primary,
    fontSize: 26.sp,
    fontFamily: Fonts.gilroy,
    fontWeight: FontWeight.w600,
  );
  // Style for text with 16sp size
  static TextStyle textStyleRegular16 = TextStyle(
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
  // Style for text with 18sp size
  static TextStyle textStyleRegular18 = TextStyle(
    color: ColorApp.primary,
    fontSize: 18.sp,
    fontFamily: Fonts.gilroy,
    fontWeight: FontWeight.w400,
  );
  static TextStyle textStyleSemi18 = TextStyle(
    color: ColorApp.colorButtonText,
    fontSize: 18.sp,
    fontFamily: Fonts.gilroy,
    fontWeight: FontWeight.w600,
  );
  // Style for text with 14sp size
  static TextStyle textStyleRegular14 = TextStyle(
    color: ColorApp.primary,
    fontSize: 14.sp,
    fontFamily: Fonts.gilroy,
    fontWeight: FontWeight.w400,
  );
  // Style for text with 45sp size
  static TextStyle textStyleRegular48 = TextStyle(
    color: Colors.white,
    fontSize: 45.sp,
    fontFamily: Fonts.gilroy,
    fontWeight: FontWeight.w600,
  );
  // Style for text with 11sp size
  static TextStyle textStyleSemi11 = TextStyle(
    color: ColorApp.primary,
    fontSize: 11.sp,
    fontFamily: Fonts.gilroy,
    fontWeight: FontWeight.w600,
  );

  // Style for text with 22sp size
  static TextStyle textStyleSemi22 = TextStyle(
    color: ColorApp.primary,
    fontSize: 22.sp,
    fontFamily: Fonts.gilroy,
    fontWeight: FontWeight.w600,
    height: 0,
  );
  // Style for text with 20sp size
  static TextStyle textStyleSemi20 = TextStyle(
    color: ColorApp.colorGroceries,
    fontSize: 20.sp,
    fontFamily: Fonts.gilroy,
    fontWeight: FontWeight.w600,
    height: 0,
  );
}
