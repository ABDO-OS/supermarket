import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:supermarket/core/constants/assets.dart';
import 'package:supermarket/core/theme/colors.dart';
import 'package:supermarket/core/theme/styles.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          SvgPicture.asset(
            Assets.imagesCarrot,
          ),
          Row(
            children: [
              const Icon(Icons.location_on),
              Text(
                'Egypt , Cairo',
                style: TextStylesApp.textStyleSemi18
                    .copyWith(color: ColorApp.colorLocation),
              )
            ],
          )
        ],
      )),
    );
  }
}
