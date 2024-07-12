import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:supermarket/core/theme/colors.dart';
import 'package:supermarket/core/theme/styles.dart';
import 'package:supermarket/core/widgets/button_add.dart';

class CardItem extends StatelessWidget {
  final String? name;
  final String? description;
  final String? price;
  final String? image;
  final VoidCallback? onPressed;

  const CardItem({
    super.key,
    this.name,
    this.description,
    this.price,
    this.image,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPressed!();
      },
      child: Card(
        elevation: 0,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
            side: BorderSide(color: ColorApp.colorBorder, width: 1.0),
            borderRadius: BorderRadius.circular(20.r)),
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.0.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  image!,
                  width: 100.w,
                  height: 80.h,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Flexible(
                child: Text('Organic Bananas',
                    overflow: TextOverflow.ellipsis,
                    style: TextStylesApp.textStyleSemi13),
              ),
              SizedBox(
                height: 5.h,
              ),
              Flexible(
                child: Text('7pcs, Priceg',
                    overflow: TextOverflow.ellipsis,
                    style: TextStylesApp.textStyleRegular11),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  FittedBox(
                      alignment: Alignment.bottomLeft,
                      clipBehavior: Clip.antiAlias,
                      fit: BoxFit.scaleDown,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              maxLines: 1,
                              '\$499999',
                              overflow: TextOverflow.ellipsis,
                              style: TextStylesApp.textStyleSemi13),
                          Text(
                              maxLines: 1,
                              '\$499999',
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.start,
                              style: TextStylesApp.textStyleSemi10.copyWith(
                                  decorationColor: Colors.red,
                                  decoration: TextDecoration.lineThrough,
                                  color: ColorApp.colorDotsPageView)),
                        ],
                      )),
                  const Spacer(),
                  ButtonAdd(
                    onPressed: () {
                      log('Add to cart');
                    },
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
