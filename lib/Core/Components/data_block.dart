import 'package:animoo/Core/Theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class DataBlock extends StatelessWidget {
  final String title;
  final Widget body;
  const DataBlock({super.key, required this.title, required this.body,});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: AppTextStyle.poppins16),
        SizedBox(height: 8,),
        body
      ],
    );
  }
}
