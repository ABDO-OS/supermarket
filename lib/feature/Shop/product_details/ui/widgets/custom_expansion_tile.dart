import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:supermarket/core/theme/colors.dart';
import 'package:supermarket/core/theme/styles.dart';

class CustomExpansionTile extends StatelessWidget {
  const CustomExpansionTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const DividerExpansionTile(),
        ExpansionTile(
            shape: const RoundedRectangleBorder(
              side: BorderSide(style: BorderStyle.none),
            ),
            iconColor: ColorApp.primary,
            expandedAlignment: Alignment.centerLeft,
            tilePadding: EdgeInsets.zero,
            childrenPadding: EdgeInsets.all(4.r),
            title: Text('Product Detail',
                style: TextStylesApp.textStyleRegular15.copyWith(
                  color: ColorApp.primary,
                )),
            children: [
              Text(
                'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healthful and varied diet.',
                style: TextStylesApp.textStyleRegular13.copyWith(
                  color: ColorApp.secondary,
                ),
              ),
            ]),
        // const DividerExpansionTile(),
      ],
    );
  }
}
class DividerExpansionTile extends StatelessWidget {
  const DividerExpansionTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: ColorApp.colorBorder,
      thickness: 1,
    );
  }
}
