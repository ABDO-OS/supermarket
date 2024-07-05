import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:supermarket/core/constants/assets.dart';
import 'package:supermarket/core/theme/styles.dart';
import 'package:supermarket/core/widgets/custom_text_form_field.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image.asset('assets/images/carrot.svg'),
            // SVG صورة بتكون بجودة عالية بنستخمد باكدج عشان نستخدمها 
            SvgPicture.asset(Assets.imagesCarrot),
            
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
          ],
        ),
      ),
    );
  }
}

class WidgetTextFromField extends StatefulWidget {
  const WidgetTextFromField({super.key});

  @override
  State<WidgetTextFromField> createState() => _WidgetTextFromFieldState();
}

class _WidgetTextFromFieldState extends State<WidgetTextFromField> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFormField(
          controller: usernameController,
          labelText: 'Username',
        ),
        CustomTextFormField(
          controller: emailController,
          labelText: 'Email',
        ),
        SizedBox(height: 20.h),
        CustomTextFormField(
          controller: passwordController,
          labelText: 'Password',
        ),
      ],
    );
  }
}
