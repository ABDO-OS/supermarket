import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:supermarket/core/theme/colors.dart';
import 'package:supermarket/core/theme/styles.dart';
import 'package:supermarket/core/widgets/button_app.dart';
import 'package:supermarket/core/widgets/custom_text_form_field.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Forgot Password',
          style:
              TextStylesApp.textStyleSemi20.copyWith(color: ColorApp.primary),
        ),
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(25.0.r),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const WidgetTextFromField(),
            SizedBox(
              height: 30.h,
            ),
            const ButtonApp(text: 'Send Email')
          ],
        ),
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
  TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFormField(
          controller: email,
          labelText: 'Email',
          keyboardType: TextInputType.emailAddress,
        ),
      ],
    );
  }
}
