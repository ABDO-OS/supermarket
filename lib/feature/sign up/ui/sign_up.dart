import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:supermarket/core/constants/assets.dart';
import 'package:supermarket/core/constants/go_router.dart';
import 'package:supermarket/core/theme/colors.dart';
import 'package:supermarket/core/theme/styles.dart';
import 'package:supermarket/core/widgets/button_app.dart';
import 'package:supermarket/core/widgets/custom_text_form_field.dart';
import 'package:supermarket/core/widgets/text_rich.dart';
import 'package:supermarket/feature/login/ui/widgets/widget_text_from_field.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: SvgPicture.asset(Assets.imagesCarrot)),
                SizedBox(
                  height: 60.h,
                ),
                Text(
                  'Sign Up',
                  textAlign: TextAlign.center,
                  style: TextStylesApp.textStyleSemi26,
                ),
                SizedBox(height: 15.h),
                Text(
                  'Enter your credentials to continue',
                  textAlign: TextAlign.center,
                  style: TextStylesApp.textStyleRegular18,
                ),
                SizedBox(height: 30.h),
                const WidgetTextFromField(),
                SizedBox(
                  height: 20.h,
                ),
                TextRich(
                  text1: 'By continuing you agree to our ',
                  text2: 'Terms of Service and Privacy Policy.',
                  style1: TextStylesApp.textStyleRegular14
                      .copyWith(color: ColorApp.secondary),
                ),
                SizedBox(
                  height: 30.h,
                ),
                ButtonApp(
                  text: 'Sing Up',
                  onPressed: () {
                    GoRouter.of(context).go(Routers.home);
                  },
                ),
                SizedBox(
                  height: 20.h,
                ),
                Center(
                    child: TextRich(
                  text1: 'Already have an account? ',
                  text2: 'Login',
                  onTap: () {
                    GoRouter.of(context).push(Routers.login);
                  },
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

