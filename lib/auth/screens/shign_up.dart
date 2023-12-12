import 'package:auth_app/auth/screens/widget/sign_up_dody.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: SignUpScreenBody(
          email: TextEditingController(),
          password: TextEditingController(),
          confirmPassword: TextEditingController(),
          formState: GlobalKey(),
        ),
      ),
    );
  }
}

