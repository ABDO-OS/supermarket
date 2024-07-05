import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:supermarket/core/theme/styles.dart';
import 'package:supermarket/feature/login/ui/widgets/widget_text_from_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.all(25.r),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: SvgPicture.asset('assets/images/carrot.svg')),
              SizedBox(height: 100.h),
              Text(
                'Login',
                textAlign: TextAlign.center,
                style: TextStylesApp.textStyleSemi26,
              ),
              SizedBox(height: 15.h),
              Text(
                'Enter your emails and password',
                textAlign: TextAlign.center,
                style: TextStylesApp.textStyleRegular16,
              ),
              SizedBox(height: 35.h),
              const WidgetTextFromField(),
              SizedBox(height: 8.h),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forgot Password?',
                    style: TextStylesApp.textStyleRegular14,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
