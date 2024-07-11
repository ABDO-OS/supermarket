import 'package:flutter/material.dart';
import 'package:supermarket/core/theme/colors.dart';
import 'package:supermarket/core/theme/styles.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final IconData? icon;
  final String? title;
  final Color? backgroundColor;
  const CustomAppbar({
    super.key,
    this.icon,
    this.title,
    this.backgroundColor,
  });
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title != null
          ? Center(
              child: Text(
                title!,
                style: TextStylesApp.textStyleSemi19
                    .copyWith(color: ColorApp.primary),
              ),
            )
          : null,
      backgroundColor: backgroundColor ?? ColorApp.colorImageDetails,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(
          Icons.arrow_back_ios_new_rounded,
          color: ColorApp.primary,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            icon,
            color: ColorApp.primary,
          ),
        ),
      ],
    );
  }
}
