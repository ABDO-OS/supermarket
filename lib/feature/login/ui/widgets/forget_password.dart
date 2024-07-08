import 'package:flutter/material.dart';
import 'package:supermarket/core/theme/styles.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () {},
        child: Text(
          'Forgot Password?',
          style: TextStylesApp.textStyleRegular13,
        ),
      ),
    );
  }
}
