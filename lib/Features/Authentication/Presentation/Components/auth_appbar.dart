import 'package:animoo/Core/Theme/app_text_style.dart';
import 'package:flutter/material.dart';

import '../../../../Core/Theme/app_colors.dart';
class AuthAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback onPressed;
  const AuthAppbar({super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.surface,
      leadingWidth: 120,
      leading: TextButton.icon(
        onPressed: onPressed,
        label: Text(
          title,
          style: AppTextStyle.Otama20
        ),
        icon: Icon(Icons.arrow_back_ios_new,color: AppColors.primaryColor,),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
