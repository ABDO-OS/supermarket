import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:supermarket/core/theme/styles.dart';
import 'package:supermarket/core/widgets/button_app.dart';
import 'package:supermarket/feature/Shop/product_details/ui/widgets/app_bar_details.dart';
import 'package:supermarket/feature/Shop/product_details/ui/widgets/container_image_product.dart';
import 'package:supermarket/feature/Shop/product_details/ui/widgets/custom_expansion_tile.dart';
import 'package:supermarket/feature/Shop/product_details/ui/widgets/nutritions.dart';
import 'package:supermarket/feature/Shop/product_details/ui/widgets/review.dart';
import 'package:supermarket/feature/Shop/product_details/ui/widgets/row_name_product.dart';
import 'package:supermarket/feature/Shop/product_details/ui/widgets/row_quantity_and_price.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarDetails(),
      body: ListView(
        children: [ Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const ContainerImageProduct(),
            SizedBox(
              height: 15.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.r),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const RowNameProduct(),
                  Text(
                    '1kg, Price',
                    style: TextStylesApp.textStyleRegular15,
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  const RowQuantityAndPrice(),
                  SizedBox(
                    height: 10.h,
                  ),
                  const CustomExpansionTile(),
                   productNutritions(),
                   Review(),
                  SizedBox(
                    height: 10.h,
                  ),
                  ButtonApp(text: 'Add To Basket', onPressed: () {}),
                ],
              ),
            ),
          ],
        ),
        ],
      ),
    );
  }
}





