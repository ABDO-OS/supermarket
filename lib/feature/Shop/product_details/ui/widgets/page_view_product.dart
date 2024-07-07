import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:supermarket/core/constants/assets.dart';
import 'package:supermarket/feature/Shop/product_details/ui/widgets/row_dots.dart';

class PageViewProduct extends StatefulWidget {
  const PageViewProduct({
    super.key,
  });

  @override
  State<PageViewProduct> createState() => _PageViewProductState();
}

class _PageViewProductState extends State<PageViewProduct> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 25.0.h),
        Expanded(
          child: PageView(
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 41.0.w),
                child: Image.asset(
                  height: 200.h,
                  width: 330.w,
                  Assets.imagesApple,
                ),
              ),
              Image.asset(
                height: 200.h,
                width: 330.w,
                Assets.imagesApple,
              ),
              Image.asset(
                height: 200.h,
                width: 330.w,
                Assets.imagesApple,
              ),
            ],
          ),
        ),
        SizedBox(height: 20.0.h),
        RowDots(currentPage: _currentPage),
        SizedBox(height: 25.0.h),
      ],
    );
  }
}
