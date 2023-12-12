import 'package:auth_app/core/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const AuthenticationApp());
}
class AuthenticationApp extends StatelessWidget {
  const AuthenticationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const  ScreenUtilInit(
       designSize:  Size(393, 852),
      minTextAdapt: true,
      splitScreenMode: true,
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
    onGenerateRoute: AppRouter.generateRoute,
    ),
    );
  }
}



