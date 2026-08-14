import 'package:animoo/Core/Theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppTextStyle{
   AppTextStyle._();

  static const TextStyle Otama20 = TextStyle(
    fontFamily: 'Otama.ep',
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    fontSize: 20.0,
    height: 1.0,
    letterSpacing: 0.0,
    color: AppColors.primaryColor,
  );

  static final TextStyle Inter12 = GoogleFonts.inter(
    fontWeight: FontWeight.w400,
    fontSize: 12,
    letterSpacing: 0,
    height: 1,
    color: Color(0xff180901).withOpacity(0.91)
  );

   static final TextStyle Inter12Bold = GoogleFonts.inter(
       fontWeight: FontWeight.bold,
       fontSize: 12,
       letterSpacing: 0,
       height: 1,
       color: Color(0xff180901).withOpacity(0.91)
   );

  static final TextStyle poppins14 = GoogleFonts.poppins(
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    fontSize: 14.0,
    height: 1.0,
    letterSpacing: 0.0,
    color: Color(0xff696969),
  );

  static final TextStyle poppins16 = GoogleFonts.poppins(
    fontSize: 16.0,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    height: 1.0,
    letterSpacing: 0.0,
    color: Color(0xff505050),
  );

  static final TextStyle poppins12 = GoogleFonts.poppins(
    fontSize: 12.0,
    fontWeight: FontWeight.w400,
    height: 1.0,
    letterSpacing: 0.0,
  );

  static final TextStyle poppins10 = GoogleFonts.poppins(
    fontSize: 10.0,
    fontWeight: FontWeight.w400,
    height: 1.0,
    letterSpacing: 0.0,
  );

  static const TextStyle Otama18 = TextStyle(
     fontFamily: 'Otama.ep',
     fontWeight: FontWeight.w400,
     fontStyle: FontStyle.normal,
     fontSize: 18.0,
     height: 1.0,
     letterSpacing: 0.0,
     color: AppColors.primaryColor,
   );
}