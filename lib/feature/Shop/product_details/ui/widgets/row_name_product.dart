import 'package:flutter/material.dart';
import 'package:supermarket/core/theme/colors.dart';
import 'package:supermarket/core/theme/styles.dart';

class RowNameProduct extends StatelessWidget {
  const RowNameProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Name Product', style: TextStylesApp.textStyleSemi19),
        InkWell(
          onTap: () {},
          child: Icon(
            Icons.favorite_border,
            color: ColorApp.primary,
          ),
        )
      ],
    );
  }
}
