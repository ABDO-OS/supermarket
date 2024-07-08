import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:supermarket/core/theme/colors.dart';
import 'package:supermarket/core/theme/styles.dart';

class TextFromFieldSearch extends StatelessWidget {
  const TextFromFieldSearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      decoration: BoxDecoration(
        color: ColorApp.colorBorderSearch,
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Center(
        child: TextFormField(
          textAlignVertical: TextAlignVertical.center,
          style: TextStylesApp.textStyleRegular15.copyWith(color: Colors.black),
          cursorColor: ColorApp.secondary,
          decoration: InputDecoration(
            // labelText: 'Search',
            // labelStyle: TextStylesApp.textStyleRegular13,
            hintText: 'Search for fruits, vegetables and more',
            hintStyle: TextStylesApp.textStyleRegular13
                .copyWith(color: ColorApp.secondary),
            prefixIcon: Icon(
              Icons.search,
              color: ColorApp.colorIconSearch,
            ),
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
