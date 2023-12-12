import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextInfo extends StatelessWidget {
  const TextInfo({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 6.w),
      child: Text(
        text,
        style: TextStyle(
            color: Color(0xffEDB60D),
            fontWeight: FontWeight.w400,
            fontSize: 16.sp),
      ),
    );
  }
}
