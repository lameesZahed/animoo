import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../Core/Components/custome_text_field.dart';
import '../../Components/auth_button.dart';
import '../../../../../Core/Components/data_block.dart';

class LogIn extends StatelessWidget {
  LogIn({super.key});

  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  FocusNode emailFocusNode=FocusNode();
  FocusNode passwordFocusNode=FocusNode();


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          DataBlock(
              title: "Email",
            body: CustomeTextField(
              hint: "Enter your email",
              isPassword: false,
              textEditingController: emailController,
              focusNode: emailFocusNode,
              nextFocusNode: passwordFocusNode,
              keyboardType: TextInputType.emailAddress,
            )
          ),
          SizedBox(height: 16,),
          DataBlock(
              title: "Password",
            body: CustomeTextField(
              hint: "********",
              isPassword: true,
              keyboardType: TextInputType.visiblePassword,
              textEditingController: passwordController,
              focusNode: passwordFocusNode,
            )
          ),
          SizedBox(height: 8,),
          TextButton(
            onPressed: (){
              Navigator.pushNamed(context,'Forget Password');
            },
            child: Text('Forget Password....?',
            style: GoogleFonts.poppins(
              fontSize: 10.0,
              fontWeight: FontWeight.w500,
              height: 36 / 10,
              letterSpacing: 0.0,
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.solid,
              color: Color(0xff04332D),
            )),
          ),
          SizedBox(height: 16,),
          AuthButton(text: "Log in", onPressed: (){},),
        ],
      ),
    );
  }
}
