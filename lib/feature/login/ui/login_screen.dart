import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:supermarket/core/theme/colors.dart';
import 'package:supermarket/core/theme/styles.dart';

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
                style: TextStylesApp.textStyleMedium16,
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
                    style: TextStylesApp.textStyleMedium14,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

class CustomTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String? labelText;
  const CustomTextFormField({
    super.key,
    required this.controller,
    this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: TextStylesApp.textStyleMedium18,
      cursorColor: ColorApp.secondary,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          labelText: labelText,
          labelStyle: TextStylesApp.textStyleSemi16,
          suffixIcon: labelText == 'Password'
              ? IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.visibility,
                    color: ColorApp.secondary,
                  ),
                )
              : null,
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: ColorApp.secondary),
          )),
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

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
