import 'package:animoo/Core/Components/custome_text_field.dart';
import 'package:animoo/Core/Theme/app_text_style.dart';
import 'package:animoo/Features/Authentication/Presentation/Components/auth_button.dart';
import 'package:flutter/material.dart';

import '../Components/auth_appbar.dart';
import '../../../../Core/Components/data_block.dart';
class ForgetPassword extends StatelessWidget {
   ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AuthAppbar(
          title: "Back",
          onPressed: (){}
      ),
      body: forgetPasswordBody(context),
    );
  }


  final TextEditingController textEditingController = TextEditingController();
  final FocusNode focusNode = FocusNode();


  Widget forgetPasswordBody(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Forget Password",style: AppTextStyle.Otama20),
          SizedBox(height: 16,),
          Text("Please enter the email address associated with your account, and we'll send you OTP to reset your password",style: AppTextStyle.poppins14),
          SizedBox(height: 48,),
          DataBlock(
            title:'Email',
            body: CustomeTextField(
                hint: "Enter your email address",
                isPassword: false,
                textEditingController: textEditingController,
                focusNode: focusNode,
                keyboardType: TextInputType.emailAddress,
            ),
          ),
          SizedBox(height: 48,),
          AuthButton(
              text: "Send Code",
              onPressed: (){
                Navigator.pushNamed(context, "OTP");
              }
          )
        ],
      ),
    );
  }


}
