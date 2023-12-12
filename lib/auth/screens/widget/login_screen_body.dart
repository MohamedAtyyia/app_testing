import 'package:auth_app/auth/screens/widget/custom_divider.dart';
import 'package:auth_app/auth/screens/widget/custom_text_span.dart';
import 'package:auth_app/auth/screens/widget/custom_widget_to_auth_by_soical.dart';
import 'package:auth_app/auth/screens/widget/text_info.dart';
import 'package:auth_app/core/widget/custom_bottom.dart';
import 'package:auth_app/core/widget/custom_text_form_filed.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreenBody extends StatelessWidget {
  const LoginScreenBody(
      {super.key, required this.email, required this.password});
  final TextEditingController email;
  final TextEditingController password;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 22.w),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50.h),
            Text(
              'Log in',
              style: TextStyle(
                  color: const Color(0xffEDB60D),
                  fontSize: 30.sp,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 50.h),
            const TextInfo(
              text: 'Email address',
            ),
            SizedBox(height: 5.h),
            CustomTextFormFiled(
                onChanged: (String email) {
                  //  this.email.text = email;
                },
                validate: (String? email) {
                  if (email!.isEmpty) {
                    return 'Field is Requaird';
                  }
                },
                isPassword: false,
                controller: email),
            SizedBox(height: 22.h),
            const TextInfo(
              text: 'Password',
            ),
            SizedBox(height: 5.h),
            CustomTextFormFiled(
                onChanged: (String password) {
                  this.password.text = password;
                },
                validate: (String? password) {
                  if (password!.isEmpty) {
                    return 'Field is Requaird';
                  }
                },
                isPassword: true,
                controller: password),
            SizedBox(height: 8.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Forgot password?',
                  style: TextStyle(
                      color: const Color(0xff000000),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            SizedBox(height: 40.h),
            CustomBottom(ontap: () {}, title: 'Log in'),
            SizedBox(height: 40.h),
            const CustomDivier(title: 'Or Login with'),
            SizedBox(height: 16.h),
            const CustomWidgetToAuthbySocial(
                image: 'assets/image/google_icon.png',
                title: 'Sign in with Google'),
            SizedBox(height: 12.h),
            const CustomWidgetToAuthbySocial(
                image: 'assets/image/Apple.png', title: 'Sign in with Apple'),
            SizedBox(height: 12.h),
            const CustomWidgetToAuthbySocial(
                image: 'assets/image/facbook_icon.png',
                title: 'Sign in with FaceBook'),
                SizedBox(height: 50.h),
               const  CustomTextEspan(title: 'Don’t have an account? ', subtitle: 'Sign up')
          ],
        ),
      ),
    );
  }
}
