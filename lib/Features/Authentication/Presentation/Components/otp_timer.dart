import 'dart:async';

import 'package:flutter/material.dart';

import '../../../../Core/Theme/app_text_style.dart';

class OtpTimer extends StatefulWidget {
  const OtpTimer({super.key});

  @override
  State<OtpTimer> createState() => _OtpTimerState();
}

class _OtpTimerState extends State<OtpTimer> {
  Timer? timer ;
  static const int intialSeconds = 60;
  int seconds = intialSeconds ;



  void startTimer(){
      timer?.cancel();
      setState(() {
        seconds = intialSeconds;
      });
      timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (seconds > 0) {
          seconds--;
        }
        else{
          timer.cancel();
        }
      });
          }
    );
  }

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  void restartTimer(){
    startTimer();
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  (seconds >0)? Text("Resend Code In 00:${seconds.toString().padLeft(2,'0')} s", style: AppTextStyle.Inter12,):
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Didn't receive code? ", style: AppTextStyle.Inter12,),
        TextButton(
          onPressed: () =>restartTimer(),
        child: Text("Resend Code", style: AppTextStyle.Inter12Bold,),),
      ],
    );
  }
}
