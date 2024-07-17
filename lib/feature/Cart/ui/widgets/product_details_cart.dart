import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:supermarket/core/theme/colors.dart';
import 'package:supermarket/core/theme/styles.dart';
import 'package:supermarket/feature/Shop/product_details/ui/widgets/row_quantity_and_price.dart';

class ProductDetailsCartView extends StatelessWidget {
  const ProductDetailsCartView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  'Product Name',
                  style: TextStylesApp.textStyleSemi13
                      .copyWith(color: ColorApp.primary),
                ),
                Text(
                  '1kg, Price',
                  style: TextStylesApp.textStyleRegular15,
                ),
              ],
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.close,
              ),
              color: ColorApp.colorDotsPageView,
            ),
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        const RowQuantityAndPrice(),
        SizedBox(
          height: 5.h,
        )
      ],
    );
  }
}
