import 'package:auth_app/auth/screens/widget/login_screen_body.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: LoginScreenBody(email: TextEditingController(),password: TextEditingController(),),
      ),
    );
  }
}

