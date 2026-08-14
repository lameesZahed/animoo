import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Theme/app_colors.dart';
import '../../Features/Authentication/Presentation/Components/camera_gallery.dart';


class UploadProfileImage extends StatelessWidget {
  const UploadProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 200,
          width: double.infinity,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xffFAFAFA)
            ),
            child: DottedBorder(
              options: RoundedRectDottedBorderOptions(
                  radius: Radius.circular(10),
                dashPattern: [2,2],
                color: AppColors.primaryColor,
                strokeWidth: 1,
              ),
              child: Center(
                child: GestureDetector(
                  onTap: (){
                    showCupertinoModalPopup(
                        context: context,
                        builder: (context)=>CameraGallery()
                    );
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.photo_rounded,size: 28,),
                      SizedBox(height: 16,),
                      Text("Select File",style: GoogleFonts.urbanist(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        height: 1.4,
                        letterSpacing: 0.2,
                      ),)
                    ]
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
