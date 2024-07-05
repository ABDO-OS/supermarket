import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:supermarket/core/constants/assets.dart';
import 'package:supermarket/feature/get_started/ui/widgets/column_background.dart';

class ContainerBackground extends StatelessWidget {
  const ContainerBackground({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.imagesStarted),
            fit: BoxFit.fill,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(25.0.r),
          child: const ColumnBackground(),
        ));
  }
}
