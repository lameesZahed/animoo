import 'package:flutter/material.dart';
import '../../../../Core/Components/custome_text_field.dart';
import '../../../../Core/Theme/app_text_style.dart';
import '../Components/auth_appbar.dart';
import '../Components/auth_button.dart';
import '../Components/password_conditions.dart';
import '../../../../Core/Components/data_block.dart';
import 'forget_password.dart';
class ResetPassword extends StatefulWidget {
   const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  FocusNode passwordFocusNode = FocusNode();
  FocusNode confirmPasswordFocusNode = FocusNode();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AuthAppbar(title: "Cancel", onPressed: (){
        // Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgetPassword()));
      }),
      body: resetPasswordBody() ,
    );
  }

  Key formKey = GlobalKey<FormState>();

  Widget resetPasswordBody(){
    return SingleChildScrollView(
      child: Form(
        key: formKey ,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Create New Password",style: AppTextStyle.Otama20),
              SizedBox(height: 16,),
              DataBlock(
                  title: "Password",
                  body: CustomeTextField(
                      hint: "********",
                      isPassword: true,
                      textEditingController: passwordController,
                      focusNode: passwordFocusNode,
                      nextFocusNode: confirmPasswordFocusNode,
                      keyboardType: TextInputType.visiblePassword,
                      onChanged: (value){
                        setState(() {

                        });
                      }
                  )
              ),
              SizedBox(height: 16,),
              PasswordConditions(password: passwordController.text,),
              SizedBox(height: 16,),
              DataBlock(
                  title: "Confirm Password",
                  body: CustomeTextField(
                    hint: "********",
                    isPassword: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please confirm your password';
                      }
                      if (value != passwordController.text) {
                        return 'Passwords do not match';
                      }
                      return null;
                    },
                    textEditingController: confirmPasswordController,
                    focusNode: confirmPasswordFocusNode,
                    keyboardType: TextInputType.visiblePassword,
                  )
              ),
              SizedBox(height: 48,),
              AuthButton(text: "Submit", onPressed: (){},),
            ],
          ),
        ),
      ),
    );
  }
}
