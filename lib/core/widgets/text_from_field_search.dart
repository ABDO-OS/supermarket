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
    return TextFormField(
      style: TextStylesApp.textStyleRegular15.copyWith(color: Colors.black),
      cursorColor: ColorApp.secondary,
      decoration: InputDecoration(
        labelText: 'Search',
        labelStyle: TextStylesApp.textStyleRegular13,
        hintText: 'Search for fruits, vegetables and more',
        hintStyle: TextStylesApp.textStyleRegular13
            .copyWith(color: ColorApp.secondary),
        prefixIcon: Icon(
          Icons.search,
          color: ColorApp.colorIconSearch,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.r),
          borderSide: BorderSide(color: ColorApp.secondary),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.r),
          borderSide: BorderSide(color: ColorApp.secondary),
        ),
      ),
    );
  }
}
