import 'package:auth_app/auth/screens/widget/cusotm_app_bar.dart';
import 'package:auth_app/auth/screens/widget/custom_text_span.dart';
import 'package:auth_app/auth/screens/widget/text_info.dart';
import 'package:auth_app/core/router/app_router.dart';
import 'package:auth_app/core/widget/custom_bottom.dart';
import 'package:auth_app/core/widget/custom_text_form_filed.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreenBody extends StatelessWidget {
  const SignUpScreenBody({super.key, required this.email, required this.password, required this.confirmPassword, required this.formState});
  final TextEditingController email;
  final TextEditingController password;
  final TextEditingController confirmPassword;
  final GlobalKey<FormState>formState;
  
  

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22.w),
        child: Form(
          key: formState,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 12.h),
              const CustomAppBar(),
              SizedBox(height: 50.h),
              Text(
                'Sign up',
                style: TextStyle(
                    color: Color(0xffEDB60D),
                    fontSize: 30.sp,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 50.h),
              const TextInfo(
                text: 'Email',
              ),
              SizedBox(height: 5.h),
              CustomTextFormFiled(
                  onChanged: (String email) {
                   this.email.text = email;
                  },
                  validate: (String? email) {
                    if(email!.isEmpty){
                      return 'Field is Requaird';
                    }
                  },
                  isPassword: false,
                  controller: email),
              SizedBox(height: 22.h),
              const TextInfo(
                text: 'Create a password',
              ),
              SizedBox(height: 5.h),
              CustomTextFormFiled(
                  onChanged: (String password) {
                                       this.password.text = password;

                  },
                  validate: (String? password) {
                    if(password!.isEmpty){
                                            return 'Field is Requaird';

                    }
                  },
                  isPassword: true,
                  controller: password),
              SizedBox(height: 22.h),
              const TextInfo(
                text: 'Confirm password',
              ),
              SizedBox(height: 5.h),
              CustomTextFormFiled(
                  onChanged: (String password) {
                    confirmPassword.text= password;
                  },
                  validate: (String? password) {
                    if(password!.isEmpty){
                                                                  return 'Field is Requaird';

                    }
                  },
                  isPassword: true,
                  controller: confirmPassword),
              SizedBox(height: 50.h),
              CustomBottom(ontap: () {
                if(formState.currentState!.validate()){
                }
              }, title: 'sign up'),
              SizedBox(height: 90.h),
              const CustomTextEspan(
                title: 'Already have an account? ',
                subtitle: 'Log in',
              )
            ],
          ),
        ),
      ),
    );
  }
}

