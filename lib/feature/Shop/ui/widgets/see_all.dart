import 'package:flutter/material.dart';
import 'package:supermarket/core/theme/colors.dart';
import 'package:supermarket/core/theme/styles.dart';

class RowSeeAll extends StatelessWidget {
  final String text1;
  final String text2;
  final Function() onPressed;
  const RowSeeAll({
    super.key,
    required this.text1,
    required this.text2,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text1,
          style: TextStylesApp.textStyleSemi21,
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            text2,
            style: TextStylesApp.textStyleSemi15
                .copyWith(color: ColorApp.colorButton),
          ),
        ),
      ],
    );
  }
}
