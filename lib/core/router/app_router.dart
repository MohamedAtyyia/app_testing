import 'package:auth_app/auth/screens/login_screen.dart';
import 'package:auth_app/auth/screens/shign_up.dart';
import 'package:flutter/material.dart';

class AppRouter {
    static const String login = '/login';
    static const String signUp = '/signUp';
  static Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const SignUpScreen());
      case login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());

    }
  }
}
