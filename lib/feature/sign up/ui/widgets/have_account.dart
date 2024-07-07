import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:supermarket/core/constants/go_router.dart';
import 'package:supermarket/core/widgets/text_rich.dart';

class HaveAccount extends StatelessWidget {
  const HaveAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
        child: TextRich(
      text1: 'Already have an account? ',
      text2: 'Login',
      onTap: () {
        GoRouter.of(context).push(Routers.login);
      },
    ));
  }
}
