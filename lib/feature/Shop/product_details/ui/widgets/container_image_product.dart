import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:supermarket/core/theme/colors.dart';
import 'package:supermarket/feature/Shop/product_details/ui/widgets/page_view_product.dart';

class ContainerImageProduct extends StatelessWidget {
  const ContainerImageProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 190.44.h,
      decoration: ShapeDecoration(
        color: ColorApp.colorImageDetails,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25.r),
            bottomRight: Radius.circular(25.r),
          ),
        ),
      ),
      child: const PageViewProduct(),
    );
  }
}
