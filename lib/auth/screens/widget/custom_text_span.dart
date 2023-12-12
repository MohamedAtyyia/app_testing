import 'package:auth_app/core/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextEspan extends StatelessWidget {
  const CustomTextEspan({
    super.key,
    required this.title,
    required this.subtitle,
  });
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: (){
                            Navigator.pushNamed(context, AppRouter.login);

        },
        child: Text.rich(
          
          TextSpan(
            text: title,
            style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: Colors.grey.withOpacity(.6)),
            children: [
              TextSpan(
                text: subtitle,
                style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffEDB60D)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
