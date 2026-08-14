import 'package:flutter/cupertino.dart';

import '../../../../Core/Theme/app_text_style.dart';
class DeleteEdit extends StatelessWidget {
  const DeleteEdit({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoActionSheet(
      actions: [
        CupertinoActionSheetAction(
          onPressed: (){},
          isDefaultAction: true,
          child: Text("Edit", style: AppTextStyle.Otama18,),
        ),
        CupertinoActionSheetAction(
          onPressed: (){},
          isDestructiveAction: true,
          child: Text("Delete", style: AppTextStyle.Otama18,),
        ),
      ],
      cancelButton: CupertinoActionSheetAction(
          onPressed: (){},
          child: Text("Cancel", style: AppTextStyle.Otama18,),
      ),
    );
  }
}
