import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:supermarket/core/theme/colors.dart';

class ButtonAdd extends StatelessWidget {
  final void Function()? onPressed;
  const ButtonAdd({
    super.key,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45.w,
      height: 40.h,
      decoration: BoxDecoration(
          color: ColorApp.colorButton,
          borderRadius: BorderRadius.all(Radius.circular(20.r))),
      child: IconButton(
          onPressed: onPressed,
          icon: const Icon(
            Icons.add_outlined,
            color: Colors.white,
          )),
    );
  }
}
