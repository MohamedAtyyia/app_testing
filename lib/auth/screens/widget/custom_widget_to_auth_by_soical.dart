import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomWidgetToAuthbySocial extends StatelessWidget {
  const CustomWidgetToAuthbySocial(
      {super.key,
      required this.image,
    required   this.title,
      });
  final String image;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width *1,
      height: 60.h,
      decoration: BoxDecoration(
        color: const Color(0xff0000001A),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: Color(0xffEDB60D)
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image,
          width: 32.w,
          height: 32.h,
          ),
          SizedBox(width: 6.w),
          
          Text(
            title,
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              color: Color(0xff000000)
            ),
          ) 
        ],
      ),
    );
  }
}
