import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:supermarket/core/widgets/custom_text_form_field.dart';

class WidgetTextFromField extends StatefulWidget {
  const WidgetTextFromField({super.key});

  @override
  State<WidgetTextFromField> createState() => _WidgetTextFromFieldState();
}

class _WidgetTextFromFieldState extends State<WidgetTextFromField> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFormField(
          controller: nameController,
          labelText: 'Name',
          keyboardType: TextInputType.name,
        ),
        CustomTextFormField(
          controller: emailController,
          labelText: 'Email',
          keyboardType: TextInputType.emailAddress,
        ),
        SizedBox(height: 20.h),
        CustomTextFormField(
          controller: phoneController,
          labelText: 'Phone',
          keyboardType: TextInputType.phone,
        ),
        SizedBox(height: 20.h),
        CustomTextFormField(
          controller: passwordController,
          labelText: 'Password',
          keyboardType: TextInputType.visiblePassword,
        ),
      ],
    );
  }
}
