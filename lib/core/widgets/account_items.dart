import 'package:flutter/material.dart';
import 'package:supermarket/core/theme/colors.dart';
import 'package:supermarket/core/theme/styles.dart';

class Item extends StatelessWidget {
  final IconData icon;
  final String text;
  final void Function()? onTap;

  const Item({
    super.key,
    required this.icon,
    required this.text,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      
      leading: Icon(icon, color: ColorApp.primary),
      title: Text(text, style: TextStylesApp.textStyleRegular17),
      onTap: onTap,
    );
  }
}
