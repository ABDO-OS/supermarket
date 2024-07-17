import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:supermarket/core/constants/assets.dart';

class CartImageProduct extends StatelessWidget {
  const CartImageProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70.43.w,
      height: 64.69.h,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.imagesPepper),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
