import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:supermarket/core/constants/assets.dart';

class imagefavourite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: 5,),
          width: 70.43.w,
          height: 64.69.h,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage(Assets.imagesPepper),
            fit: BoxFit.cover,
          )),
        ),
      ],
    );
  }
}
