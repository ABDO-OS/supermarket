import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:supermarket/core/theme/colors.dart';
import 'package:supermarket/core/theme/styles.dart';

class ButtonApp extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  const ButtonApp({
    super.key,
    this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor:
              WidgetStateProperty.all<Color>(ColorApp.colorButton),
          minimumSize: WidgetStateProperty.all<Size>(
            Size(double.infinity, 50.h),
          ),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                19.r, // Rounded corners
              ),
            ),
          ),
        ),
        child: Text(
          text,
          style: TextStylesApp.textStyleSemi18,
        ));
  }
}
