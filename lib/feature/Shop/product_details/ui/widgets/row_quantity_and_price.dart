import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:supermarket/core/theme/colors.dart';
import 'package:supermarket/core/theme/styles.dart';

class RowQuantityAndPrice extends StatelessWidget {
  const RowQuantityAndPrice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    int quantity = 1;
    return Row(
      children: [
        InkWell(
          onTap: () {
            if (quantity > 1) {
              quantity--;
            }
          },
          child: Icon(
            Icons.remove,
            color: ColorApp.secondary,
          ),
        ),
        SizedBox(
          width: 10.w,
        ),
        Container(
          width: 45.w,
          height: 40.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18.r),
            border: Border.all(
              color: ColorApp.colorBorder,
            ),
          ),
          child: Center(
            child: Text(
              '$quantity',
              style: TextStylesApp.textStyleRegular17,
            ),
          ),
        ),
        SizedBox(
          width: 10.w,
        ),
        InkWell(
          onTap: () {
            quantity++; 

            
          },
          child: Icon(
            Icons.add_outlined,
            color: ColorApp.colorButton,
          ),
        ),
        const Spacer(),
        Text(
          '\$4.99',
          style: TextStylesApp.textStyleSemi21,
        ),
      ],
    );
  }
}
