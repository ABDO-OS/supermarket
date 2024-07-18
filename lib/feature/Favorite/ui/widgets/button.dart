import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:supermarket/core/theme/styles.dart';

class button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30.0.w),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          child: Center(
            child: Text(
              'Add To Card',
              style: TextStylesApp.textStyleSemi17,
            ),
          ),
          width: double.infinity,
          height: 67,
          decoration: ShapeDecoration(
            color: const Color(0xFF53B175),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(19.r),
            ),
          ),
        ),
      ),
    );
  }
}
