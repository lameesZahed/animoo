import 'package:animoo/Features/Authentication/Presentation/Screens/Register/sign_up.dart';
import 'package:flutter/material.dart';
import '../../Components/question_button.dart';
import 'log_in.dart';



class Register extends StatefulWidget {
 const Register({super.key,});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  late int index;
  late String pageName;

  @override
  void initState() {
    index=0;
    pageName="Log in";
    super.initState();
  }

  String onChange(){
    if(index==1){
      setState(() {
        pageName="Sign up";
      });
    }
    else{
      setState(() {
        pageName="Log in";
      });
    }
    return pageName;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: registerBody(),
    );
  }

  Widget registerBody(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 48.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/Logo/logo.png",width: 72,height: 92.84768676757812),
            Text(onChange(),style: TextStyle(
              fontFamily: 'Otama.ep',
              fontSize: 38.21,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
              height: 92.34 / 38.21,
              letterSpacing: 0.0,
            ),),
            SizedBox(height: 24,),
            (index==0)? LogIn():SignUp(),
            // Spacer(),
            QuestionButton(
                question: (index==0)?"Don’t have an account?":"Have an account already?" ,
                solution: (index==0)?"Sign up now":"Log in",
                onPressed: (){
                  if(index==0){
                    setState(() {
                      index=1;
                    });
                  }
                  else{
                    setState(() {
                      index=0;
                    });
                  }
                }
            )
          ],
        ),
      ),
    );
  }
}
