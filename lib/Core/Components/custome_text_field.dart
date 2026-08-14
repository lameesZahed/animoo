import 'package:flutter/material.dart';
class CustomeTextField extends StatefulWidget {
  final String hint;
  final bool isPassword;
  final TextEditingController textEditingController ;
  final FocusNode focusNode;
  final FocusNode? nextFocusNode;
  final TextInputType keyboardType;
  final ValueChanged<String>? onChanged;
  final String? Function(String?)? validator;
  const CustomeTextField({super.key, required this.hint, required this.isPassword, required this.textEditingController, required this.focusNode, this.nextFocusNode, required this.keyboardType, this.onChanged, this.validator});

  @override
  State<CustomeTextField> createState() => _AuthTextFieldState();
}

class _AuthTextFieldState extends State<CustomeTextField> {
  late bool hidePassword;
  late TextEditingController controller;
  late FocusNode node;
  late FocusNode nextNode;

  @override
  void initState() {
    hidePassword=true;
    controller=widget.textEditingController;
    node=widget.focusNode;
    nextNode=widget.nextFocusNode??FocusNode();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        obscureText: widget.isPassword?hidePassword:false,
        obscuringCharacter: "*",
        controller: controller,
        keyboardType: widget.keyboardType,
        focusNode: node,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        onChanged: widget.onChanged,
        validator: (widget.validator==null)?
            (value){
          if(value!.isEmpty){
            return "This field is required";
          }
          return null;
        }:widget.validator,
        onFieldSubmitted: (value){
          if(nextNode!=null && value.isNotEmpty ){
            FocusScope.of(context).requestFocus(nextNode);
          }
          else{
            FocusScope.of(context).unfocus();
          }
          widget.onChanged!(value);
        },
        decoration: InputDecoration(
          hintText: widget.hint,
          suffixIcon: widget.isPassword?IconButton(
            onPressed: (){
              setState(() {
                hidePassword=!hidePassword;
              });
            },
            icon:(hidePassword)? Icon(Icons.visibility_off_outlined):Icon(Icons.visibility_outlined),
          ):null,

        )
    );
  }
}
