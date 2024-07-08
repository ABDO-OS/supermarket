import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:supermarket/core/constants/assets.dart';
import 'package:supermarket/core/theme/colors.dart';
import 'package:supermarket/core/theme/styles.dart';

class CardCategorySearch extends StatelessWidget {
  const CardCategorySearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 165.0.w,
      height: 180.0.h,
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
            side: BorderSide(color: ColorApp.colorBorder),
            borderRadius: BorderRadius.all(Radius.circular(20.r))),
        elevation: 0,
        child: Padding(
          padding: EdgeInsets.all(10.0.r),
          child: Column(
            children: [
              Image.asset(
                Assets.imagesProduct,
                fit: BoxFit.fill,
                width: 100.00.w,
                height: 65.00.h,
              ),
              const SizedBox(
                height: 20,
              ),
              Text('Fresh Fruits & Vegetable',
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStylesApp.textStyleSemi15
                      .copyWith(color: ColorApp.primary)),
            ],
          ),
        ),
      ),
    );
  }
}
