import 'package:animoo/Core/Theme/app_text_style.dart';
import 'package:flutter/cupertino.dart';

import '../../../../Core/Theme/app_colors.dart';

class CameraGallery extends StatelessWidget {
   CameraGallery({super.key});




  @override
  Widget build(BuildContext context) {
    return CupertinoActionSheet(
      actions: [
        CupertinoActionSheetAction(
          onPressed: (){},
          child: Text("Photo Gallery", style: AppTextStyle.Otama18,),
        ),
        CupertinoActionSheetAction(
          onPressed: (){},
          child: Text("Camera", style: AppTextStyle.Otama18,),
        ),
      ],
      cancelButton: CupertinoActionSheetAction(
        onPressed: (){
          Navigator.pop(context,true);
        },
        child: Text("Cancel", style: AppTextStyle.Otama18,),
      )

    );
  }
}
