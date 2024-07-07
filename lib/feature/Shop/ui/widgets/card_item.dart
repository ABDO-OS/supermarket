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
    return SizedBox(
      height: 240.h,
      width: 195.w,
      child: GestureDetector(
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
                  child: Text(
                    'Organic Bananas',
                    overflow: TextOverflow.ellipsis,
                    style: TextStylesApp.textStyleSemi15
                        .copyWith(color: ColorApp.primary),
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Flexible(
                  child: Text(
                    '7pcs, Priceg',
                    overflow: TextOverflow.ellipsis,
                    style: TextStylesApp.textStyleRegular13
                        .copyWith(color: ColorApp.secondary),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      child: Text(
                        '\$4.99',
                        overflow: TextOverflow.ellipsis,
                        style: TextStylesApp.textStyleSemi17.copyWith(
                          color: ColorApp.primary,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 40.w,
                    ),
                    const ButtonAdd()
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
