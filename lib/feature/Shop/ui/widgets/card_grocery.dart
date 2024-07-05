import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:supermarket/core/constants/assets.dart';
import 'package:supermarket/core/theme/colors.dart';
import 'package:supermarket/core/theme/styles.dart';

class CardGrocery extends StatelessWidget {
  const CardGrocery({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 80.h,
        width: 240.w,
        child: GestureDetector(
          onTap: () {},
          child: Card(
              elevation: 0,
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                  side: BorderSide(color: ColorApp.colorBorder, width: 1.0),
                  borderRadius: BorderRadius.circular(20.r)),
              color: Colors.white,
              child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.0.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        Assets.imagesFrashFruits,
                        fit: BoxFit.fill,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Flexible(
                        child: Center(
                          child: Text('Fresh Fruits',
                              overflow: TextOverflow.ellipsis,
                              style: TextStylesApp.textStyleSemi20),
                        ),
                      ),
                    ],
                  ))),
        ));
  }
}
