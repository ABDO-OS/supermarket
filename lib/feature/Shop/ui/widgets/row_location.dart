import 'package:flutter/material.dart';
import 'package:supermarket/core/theme/colors.dart';
import 'package:supermarket/core/theme/styles.dart';

class RowLocation extends StatelessWidget {
  const RowLocation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(Icons.location_on),
        Text(
          'Egypt , Cairo',
          style: TextStylesApp.textStyleSemi17
              .copyWith(color: ColorApp.colorLocation),
        ),
      ],
    );
  }
}
