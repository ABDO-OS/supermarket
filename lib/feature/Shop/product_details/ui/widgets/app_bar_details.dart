import 'package:flutter/material.dart';
import 'package:supermarket/core/theme/colors.dart';

class AppBarDetails extends StatelessWidget implements PreferredSizeWidget {
  const AppBarDetails({
    super.key,
  });
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorApp.colorImageDetails,
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
            Icons.file_upload_outlined,
            color: ColorApp.primary,
          ),
        ),
      ],
    );
  }
}
