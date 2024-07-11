import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:supermarket/core/theme/colors.dart';
import 'package:supermarket/core/theme/fonts.dart';

abstract class TextStylesApp {
  // Style for text with 25sp size
  static TextStyle textStyleSemi25 = TextStyle(
    color: ColorApp.primary,
    fontSize: 25.sp,
    fontFamily: Fonts.gilroy,
    fontWeight: FontWeight.w600,
  );
  // Style for text with 15sp size
  static TextStyle textStyleRegular15 = TextStyle(
    color: ColorApp.secondary,
    fontSize: 15.sp,
    fontFamily: Fonts.gilroy,
    fontWeight: FontWeight.w400,
  );
  static TextStyle textStyleSemi15 = TextStyle(
    color: ColorApp.secondary,
    fontSize: 15.sp,
    fontFamily: Fonts.gilroy,
    fontWeight: FontWeight.w600,
  );
  // Style for text with 17sp size
  static TextStyle textStyleRegular17 = TextStyle(
    color: ColorApp.primary,
    fontSize: 17.sp,
    fontFamily: Fonts.gilroy,
    fontWeight: FontWeight.w400,
  );
  static TextStyle textStyleSemi17 = TextStyle(
    color: ColorApp.colorButtonText,
    fontSize: 17.sp,
    fontFamily: Fonts.gilroy,
    fontWeight: FontWeight.w600,
  );
  // Style for text with 13sp size
  static TextStyle textStyleRegular13 = TextStyle(
    color: ColorApp.primary,
    fontSize: 13.sp,
    fontFamily: Fonts.gilroy,
    fontWeight: FontWeight.w400,
  );
    static TextStyle textStyleSemi13 = TextStyle(
    color: ColorApp.primary,
    fontSize: 13.sp,
    fontFamily: Fonts.gilroy,
    fontWeight: FontWeight.w600,
    height: 0,
  );
  // Style for text with 44sp size
  static TextStyle textStyleRegular44 = TextStyle(
    color: Colors.white,
    fontSize: 44.sp,
    fontFamily: Fonts.gilroy,
    fontWeight: FontWeight.w600,
  );
  // Style for text with 10sp size
  static TextStyle textStyleSemi10 = TextStyle(
    color: ColorApp.primary,
    fontSize: 10.sp,
    fontFamily: Fonts.gilroy,
    fontWeight: FontWeight.w600,
  );

  // Style for text with 21sp size
  static TextStyle textStyleSemi21 = TextStyle(
    color: ColorApp.primary,
    fontSize: 21.sp,
    fontFamily: Fonts.gilroy,
    fontWeight: FontWeight.w600,
    height: 0,
  );
  // Style for text with 19sp size
  static TextStyle textStyleSemi19 = TextStyle(
    color: ColorApp.colorGroceries,
    fontSize: 19.sp,
    fontFamily: Fonts.gilroy,
    fontWeight: FontWeight.w600,
    height: 0,
  );

  // Style for text with 11sp size
    static TextStyle textStyleRegular11 = TextStyle(
    color: ColorApp.primary,
    fontSize: 11.sp,
    fontFamily: Fonts.gilroy,
    fontWeight: FontWeight.w400,
  );
}
