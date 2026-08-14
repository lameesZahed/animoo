import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../Core/Theme/app_colors.dart';

class AuthButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const AuthButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryColor,
          foregroundColor: AppColors.surface,
          padding: const EdgeInsets.all(10.0),
          elevation: 0,
          fixedSize: const Size(1000000, 44.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0), // border-radius: 5px
          ),
        ),
        child: Text(
            text,
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            fontSize: 14.0,
            fontWeight: FontWeight.w400,
            height: 1.0,
            letterSpacing: 0.0,
            color:  AppColors.surface,
          ),
        )
    );
  }
}
