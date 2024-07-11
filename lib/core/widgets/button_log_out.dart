import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:supermarket/core/theme/colors.dart';
import 'package:supermarket/core/theme/styles.dart';

class ButtonLogOut extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  const ButtonLogOut({
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
            WidgetStateProperty.all<Color>(ColorApp.colorStarted),
        minimumSize: WidgetStateProperty.all<Size>(
          Size(300.w, 50.h),
        ),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              19.r, // Rounded corners
            ),
          ),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min, 
      
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 70),
            child: Icon(
              Icons.logout,
              size: 25,
              color: ColorApp.colorButton,
            ),
          ),
           SizedBox(width: 10.w),
          Padding(
            padding: const EdgeInsets.only(right: 100),
            child: Text(
              text,
              style: TextStylesApp.textStyleSemi17.copyWith(
                color: ColorApp.colorButton
              ),
            ),
          ),
        ],
      ),
    );
  }
}
