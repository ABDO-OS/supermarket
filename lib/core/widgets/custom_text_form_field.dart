import 'package:flutter/material.dart';
import 'package:supermarket/core/theme/colors.dart';
import 'package:supermarket/core/theme/styles.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String? labelText;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  const CustomTextFormField({
    super.key,
    required this.controller,
    this.labelText,
    this.validator,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: TextStylesApp.textStyleRegular18,
      validator: validator,
      cursorColor: ColorApp.secondary,
      keyboardType: keyboardType,
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
