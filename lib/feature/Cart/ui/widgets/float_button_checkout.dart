import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:supermarket/feature/Cart/ui/widgets/row_checkout.dart';

class CheckoutButtonFloat extends StatelessWidget {
  const CheckoutButtonFloat({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30.0.w),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          width: double.infinity,
          height: 67,
          decoration: ShapeDecoration(
            color: const Color(0xFF53B175),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(19.r),
            ),
          ),
          child: const CheckoutRow(),
        ),
      ),
    );
  }
}
