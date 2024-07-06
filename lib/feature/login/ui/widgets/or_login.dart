import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:supermarket/core/theme/styles.dart';

class OrLogin extends StatelessWidget {
  const OrLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            height: 1.h,
            color: Colors.grey,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Text(
            'OR',
            style: TextStylesApp.textStyleRegular14,
          ),
        ),
        Expanded(
          child: Divider(
            height: 1.h,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
