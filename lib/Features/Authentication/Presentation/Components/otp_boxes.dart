import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class OtpBoxes extends StatelessWidget {
  OtpBoxes({super.key, });

  List <TextEditingController> otpController = List.generate(5, (controller)=> TextEditingController());
  List <FocusNode> otpFocusNode = List.generate(5, (node)=>FocusNode());

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(5, (index) => SizedBox(
        width: 54,
        height: 53,
        child: KeyboardListener(
          focusNode: FocusNode(),
          onKeyEvent: (event){
            if(event is KeyDownEvent
                && event.logicalKey == LogicalKeyboardKey.backspace
            && otpController[index].text.isEmpty && index > 0){
              FocusScope.of(context).requestFocus(otpFocusNode[index-1]);
              otpController[index].clear();
            }
          },
          child: TextFormField(
            onChanged: (value){
              if(value.length>1){
                otpController[index].clear();
                for(int i=0;i<5;i++){
                  otpController[i].text=value[i];
                }
                int lastIndex = (value.length-1).clamp(0, 4);
                if(lastIndex==4){
                  otpFocusNode[lastIndex].unfocus();
                  final otpValue = otpController.map((controller) => controller.text).join();
                }
              }
              if(value.length ==1 ){
                if(index<4){
                  otpFocusNode[index+1].requestFocus();
                }
                else{
                  otpFocusNode[index].unfocus();
                  final otpValue = otpController.map((controller) => controller.text).join();
                }
              }
            },
              focusNode: otpFocusNode[index],
              controller: otpController[index],
            // maxLength: 1,
              keyboardType: TextInputType.number,
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly,
                // FilteringTextInputFormatter.deny(RegExp(r'\s')), //يمنع المستخدم من كتابة أي مسافات
                // FilteringTextInputFormatter.deny(RegExp(r'\D')), //يمنع كتابة أي حرف ليس رقماً
                FilteringTextInputFormatter.allow(RegExp(r'[0-9]')) //يحط ارقام بس
              ],
              decoration: InputDecoration(
              filled: false,
              counterText: "",
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Color(0xFFD6D6D6),
                  width: 1,
                  strokeAlign: BorderSide.strokeAlignCenter,
                )
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Color(0xFFD6D6D6),
                  width: 2,
                  strokeAlign: BorderSide.strokeAlignCenter,
              ))
            )
          ),
        )
      ),
    ));
  }
}
