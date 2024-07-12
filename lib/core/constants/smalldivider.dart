import 'package:flutter/material.dart';
import 'package:supermarket/core/theme/colors.dart';

class SmallDivider extends StatelessWidget {
  const SmallDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: ColorApp.colorBorder,
      thickness: 1,
      endIndent: 25,
      indent: 25,
    );
  }
}