import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class PasswordConditions extends StatefulWidget {
  final String password;
  PasswordConditions({super.key, required this.password});

  @override
  State<PasswordConditions> createState() => _PasswordConditionsState();
}

class _PasswordConditionsState extends State<PasswordConditions> {
  late bool c1,c2,c3,c4,c5,c6;
  late String setPassword;
  @override

    List conditions =[
    "Please add all necessary characters to create safe password.",
    "Minimum characters 12.",
    "One uppercase character.",
    "One lowercase character.",
    "One special character.",
    "One number.",
  ];

  TextStyle wrongPasswordStyle = GoogleFonts.poppins(
    fontSize: 9.0,
    fontWeight: FontWeight.w600,
    height: 1.0,
    letterSpacing: 0.0,
    color: Color(0xfffC1B1A),
  );

  TextStyle rightPasswordStyle(String condition) =>GoogleFonts.poppins(
    fontSize: 9.0,
    fontWeight: FontWeight.w600,
    height: 1.0,
    letterSpacing: 0.0,
    decoration: (condition!=conditions[0])? TextDecoration.lineThrough : TextDecoration.none,
    color: Color(0xff08A43A),
  );

  @override
  Widget build(BuildContext context) {
    setPassword=widget.password;
    c2=setPassword.length>=12;
    c3=setPassword.contains(RegExp(r'[A-Z]'));
    c4=setPassword.contains(RegExp(r'[a-z]'));
    c5=setPassword.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'));
    c6=setPassword.contains(RegExp(r'[0-9]'));
    c1= c2&&c3&&c4&&c5&&c6;
    return Column(
      children: [
        passwordValidate(conditions[0],c1),
        // SizedBox(height: 16,),
        passwordValidate(conditions[1],c2),
        // SizedBox(height: 16,),
        passwordValidate(conditions[2],c3),
        // SizedBox(height: 16,),
        passwordValidate(conditions[3],c4),
        // SizedBox(height: 16,),
        passwordValidate(conditions[4],c5),
        // SizedBox(height: 16,),
        passwordValidate(conditions[5],c6),
      ],
    );
  }

  Widget passwordValidate(String condition,bool isRight){
      return Row(
        children: [
          if(condition!=conditions[0])?Icon(Icons.circle,size: 10,color: (isRight)?Color(0xff08A43A):Color(0xfffC1B1A),),
          Text(condition,
            style: (isRight)?rightPasswordStyle(condition):wrongPasswordStyle,
          ),
        ]
    );
    }
}




