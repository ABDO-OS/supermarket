import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:supermarket/core/constants/assets.dart';
import 'package:supermarket/core/constants/go_router.dart';
import 'package:supermarket/core/theme/styles.dart';
import 'package:supermarket/core/widgets/button_app.dart';
import 'package:supermarket/core/widgets/text_rich.dart';
import 'package:supermarket/feature/login/ui/widgets/or_login.dart';
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
              Center(child: SvgPicture.asset(Assets.imagesCarrot)),
              SizedBox(height: 100.h),
              Text(
                'Login',
                textAlign: TextAlign.center,
                style: TextStylesApp.textStyleSemi25,
              ),
              SizedBox(height: 15.h),
              Text(
                'Enter your emails and password',
                textAlign: TextAlign.center,
                style: TextStylesApp.textStyleRegular15,
              ),
              SizedBox(height: 35.h),
              const WidgetTextFromField(),
              SizedBox(height: 5.h),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    GoRouter.of(context).push(Routers.forgotPassword);
                  },
                  child: Text(
                    'Forgot Password?',
                    style: TextStylesApp.textStyleRegular13,
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              ButtonApp(
                  text: 'Login',
                  onPressed: () {
                    GoRouter.of(context).push(Routers.home);
                  }),
              SizedBox(height: 20.h),
              Center(
                child: TextRich(
                    onTap: () {
                      GoRouter.of(context).push(Routers.signUp);
                    },
                    text1: 'Don’t have an account?',
                    text2: ' Sign up'),
              ),
              SizedBox(height: 15.h),
              const OrLogin(),
              SizedBox(height: 10.h),
              Center(
                child: IconButton(
                    onPressed: () {},
                    icon: Image.asset(width: 40.w, Assets.imagesGoogle)),
              ),
              SizedBox(height: 15.h),
            ],
          ),
        ),
      ),
    ));
  }
}
