import 'package:flutter/material.dart';

import '../../../../../Core/Components/custome_text_field.dart';
import '../../Components/auth_button.dart';
import '../../Components/password_conditions.dart' ;
import '../../../../../Core/Components/data_block.dart';
import '../../../../../Core/Components/upload_profile_image.dart';


class SignUp extends StatefulWidget {
  SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  Key formKey = GlobalKey<FormState>();
  TextEditingController firstNameController=TextEditingController();
  TextEditingController lastNameController=TextEditingController();
  TextEditingController emailController=TextEditingController();
  TextEditingController phoneNumberController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  TextEditingController confirmPasswordController=TextEditingController();
  FocusNode firstNameFocusNode=FocusNode();
  FocusNode lastNameFocusNode=FocusNode();
  FocusNode emailFocusNode=FocusNode();
  FocusNode phoneNumberFocusNode=FocusNode();
  FocusNode passwordFocusNode=FocusNode();
  FocusNode confirmPasswordFocusNode=FocusNode();

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
    phoneNumberController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    firstNameFocusNode.dispose();
    lastNameFocusNode.dispose();
    emailFocusNode.dispose();
    phoneNumberFocusNode.dispose();
    passwordFocusNode.dispose();
    confirmPasswordFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: formKey,
        child: Column(
          children: [
            DataBlock(
                title: "First Name",
              body: CustomeTextField(
                hint: "Enter your First Name",
                isPassword: false,
                textEditingController: firstNameController,
                focusNode: firstNameFocusNode,
                nextFocusNode: lastNameFocusNode,
                keyboardType: TextInputType.name,
              )
            ),
            SizedBox(height: 16,),
            DataBlock(
                title: "Last Name",
              body: CustomeTextField(
                hint: "Enter your Last Name",
                isPassword: false,
                textEditingController: lastNameController,
                focusNode: lastNameFocusNode,
                nextFocusNode: emailFocusNode,
                keyboardType: TextInputType.name,
              )
            ),
            SizedBox(height: 16,),
            DataBlock(
                title: "Email",
              body: CustomeTextField(
                hint: "Enter your email",
                isPassword: false,
                textEditingController: emailController,
                focusNode: emailFocusNode,
                nextFocusNode: phoneNumberFocusNode,
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            SizedBox(height: 16,),
            DataBlock(
                title: "Phone Number",
              body: CustomeTextField(
                hint: "Enter your phone number",
                isPassword: false,
                textEditingController: phoneNumberController,
                focusNode: phoneNumberFocusNode,
                nextFocusNode: passwordFocusNode,
                keyboardType: TextInputType.phone,
              )
            ),
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
            SizedBox(height: 16,),
            DataBlock(
              title: "Upload Image For Your Profile",
              body: UploadProfileImage(),
            ),
            SizedBox(height: 16,),
            AuthButton(text: "Sign up", onPressed: (){},),
          ],
        ),
      ),
    );
  }
}



