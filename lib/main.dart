import 'package:animoo/Features/Authentication/Presentation/Screens/otp.dart';
import 'package:flutter/material.dart';
import 'Core/Theme/app_theme.dart';
import 'Features/Authentication/Presentation/Screens/Register/register.dart';
import 'Features/Authentication/Presentation/Screens/forget_password.dart';
import 'Features/Authentication/Presentation/Screens/reset_password.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      themeMode: ThemeMode.light,
      routes: {
        "Forget Password": (context) => ForgetPassword(),
        "OTP": (context) => Otp(),
        "Reset Password": (context) => ResetPassword(),
      },
      home: Register(),
    );
  }
}
