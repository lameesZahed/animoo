import 'package:animoo/Features/Authentication/Presentation/Components/otp_boxes.dart';
import 'package:animoo/Features/Authentication/Presentation/Components/otp_timer.dart';
import 'package:flutter/material.dart';
import '../../../../Core/Theme/app_text_style.dart';
import '../Components/auth_appbar.dart';
import '../Components/auth_button.dart';

class Otp extends StatelessWidget {
  const Otp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AuthAppbar(title: "Cancel", onPressed: () {}),
      body: otpBody(context),
    );
  }

  Widget otpBody(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("OTP Verification",style: AppTextStyle.Otama20),
          SizedBox(height: 16,),
          Text("Please enter the 4 digit code sent your phone number",style: AppTextStyle.poppins14),
          SizedBox(height: 48,),
          OtpBoxes(),
          SizedBox(height: 48,),
          AuthButton(
              text: "Confirm",
              onPressed: (){
                Navigator.pushNamed(context, "Reset Password");
              }
          ),
          SizedBox(height: 16,),
          Center(child: OtpTimer())
        ],
      ),
    );
  }
}
