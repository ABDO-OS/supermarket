import 'package:flutter/material.dart';
import 'package:supermarket/core/theme/colors.dart';
import 'package:supermarket/core/theme/styles.dart';

class detailsfavourite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Product Name',
              style: TextStylesApp.textStyleSemi13
                  .copyWith(color: ColorApp.primary),
            ),
            SizedBox(height: 2),
            Text(
              '325, Price',
              style: TextStylesApp.textStyleRegular15,
            ),
            SizedBox(height: 20),
          ],
        ),
        // SizedBox(width: 20),
        Padding(
          padding: const EdgeInsets.only(left: 90),
          child: Text(
            '\$1.99',
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_forward_ios),
          color: Colors.black,
        ),
      ],
    );
  }
}
