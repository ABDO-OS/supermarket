import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:supermarket/core/theme/colors.dart';
import 'package:supermarket/core/theme/styles.dart';
import 'package:supermarket/feature/Cart/ui/widgets/float_button_checkout.dart';
import 'package:supermarket/feature/Cart/ui/widgets/image_product_cart.dart';
import 'package:supermarket/feature/Cart/ui/widgets/product_details_cart.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            'My Cart',
            style: TextStylesApp.textStyleSemi19.copyWith(color: Colors.black),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) => Row(
                        children: [
                          const CartImageProduct(),
                          SizedBox(
                            width: 10.w,
                          ),
                          const Expanded(
                            child: ProductDetailsCartView(),
                          ),
                        ],
                      ),
                  separatorBuilder: (context, index) => Divider(
                        color: ColorApp.colorBorder,
                        // thickness: 1,
                        indent: 10.w,
                      ),
                  itemCount: 10),
            ),
          ],
        ),
      ),
      floatingActionButton: const CheckoutButtonFloat(),
    );
  }
}
