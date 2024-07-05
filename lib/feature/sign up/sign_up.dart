import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:supermarket/core/theme/colors.dart';
import 'package:supermarket/core/theme/styles.dart';

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
            Image.asset('assets/images/carrot.svg'),
            Text(
              'Sign Up',
              textAlign: TextAlign.center,
              style: TextStylesApp.textStyleSemi26,
            ),
            SizedBox(height: 15.h),
            Text(
              'Enter your credentials to continue',
              textAlign: TextAlign.center,
              style: TextStylesApp.textStyleMedium16,
            ),
          ],
        ),
      ),
    );
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
