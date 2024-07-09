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
      backgroundColor: Color.fromARGB(255, 238, 238, 238),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: SvgPicture.asset(Assets.imagesCarrot)),
                SizedBox(
                  height: 100,
                ),
                Text(
                  'Sign Up',
                  textAlign: TextAlign.center,
                  style: TextStylesApp.textStyleSemi25,
                ),
                SizedBox(height: 15.h),
                Text(
                  'Enter your credentials to continue',
                  textAlign: TextAlign.center,
                  style: TextStylesApp.textStyleRegular15,
                ),
                SizedBox(height: 20),
                _WidgetTextFromField(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _WidgetTextFromField extends StatefulWidget {
  const _WidgetTextFromField({super.key});

  @override
  State<_WidgetTextFromField> createState() => _WidgetTextFromFieldState();
}

class _WidgetTextFromFieldState extends State<_WidgetTextFromField> {
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
          SizedBox(height: 10.h),
          CustomTextFormField(
            controller: emailController,
            labelText: 'Email',
          ),
          SizedBox(height: 10.h),
          CustomTextFormField(
            controller: passwordController,
            labelText: 'Password',
          ),
        ],
      );
   
  }
}
