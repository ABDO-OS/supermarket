import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:supermarket/core/constants/validation.dart';
import 'package:supermarket/core/widgets/custom_text_form_field.dart';

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
          keyboardType: TextInputType.emailAddress,
          controller: emailController,
          validator: Validation.validateEmail,
          labelText: 'Email',
        ),
        SizedBox(height: 20.h),
        CustomTextFormField(
          keyboardType: TextInputType.visiblePassword,
          validator: Validation.validatePassword,
          controller: passwordController,
          labelText: 'Password',
        ),
      ],
    );
  }
}
