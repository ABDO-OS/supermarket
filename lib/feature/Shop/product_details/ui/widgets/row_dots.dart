import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:supermarket/core/theme/colors.dart';

class RowDots extends StatelessWidget {
  const RowDots({
    super.key,
    required int currentPage,
  }) : _currentPage = currentPage;

  final int _currentPage;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(3, (index) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          margin: EdgeInsets.symmetric(horizontal: 3.0.w),
          height: 3.0.h,
          width: _currentPage == index ? 16.6.w : 3.0.w,
          decoration: BoxDecoration(
            color: _currentPage == index
                ? ColorApp.colorButton
                : ColorApp.colorDotsPageView,
            borderRadius: BorderRadius.circular(13.0.r),
          ),
        );
      }),
    );
  }
}
