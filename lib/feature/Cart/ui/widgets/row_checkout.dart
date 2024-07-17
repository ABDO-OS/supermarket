import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:supermarket/core/theme/colors.dart';
import 'package:supermarket/core/theme/styles.dart';

class CheckoutRow extends StatelessWidget {
  const CheckoutRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Go to Checkout',
          style: TextStylesApp.textStyleSemi17,
        ),
        SizedBox(
          width: 30.w,
        ),
        Container(
          clipBehavior: Clip.antiAlias,
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
          decoration: ShapeDecoration(
            color: const Color(0xFF479D66),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          ),
          child: Text(
            '\$12.96',
            style: TextStylesApp.textStyleRegular11
                .copyWith(color: ColorApp.colorCheckText),
          ),
        )
      ],
    );
  }
}
