import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../Core/Theme/app_colors.dart';

class QuestionButton extends StatelessWidget {
  final String question;
  final String solution;
  final VoidCallback onPressed;
  const QuestionButton({super.key, required this.question, required this.solution, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(question,style: GoogleFonts.poppins(
          fontSize: 14.0,
          fontWeight: FontWeight.w500,
          height: 36 / 14,
          letterSpacing: 0.0,
          color: Color(0xff828282),
        ),),
        TextButton(
          onPressed: onPressed,
          child: Text(solution,style: GoogleFonts.poppins(
            fontSize: 14.0,
            fontWeight: FontWeight.w600,
            height: 36 / 14,
            letterSpacing: 0.0,
            decoration: TextDecoration.underline,
            decorationStyle: TextDecorationStyle.solid,
            color: AppColors.primaryColor,
          ),),
        )
      ],
    );
  }
}
