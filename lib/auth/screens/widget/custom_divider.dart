import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDivier extends StatelessWidget {
  const CustomDivier({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Divider(
            thickness: 1.2,
            color: Color(0xffD8DADC),
          ),
        ),
        SizedBox(width: 12.w),
        Text(
          title,
          style: TextStyle(
              fontSize: 14.sp,
              color: Colors.black.withOpacity(.5),
              fontWeight: FontWeight.w400),
        ),
        SizedBox(width: 12.w),
        const Expanded(
          child: Divider(
            thickness: 1.2,
            color: Color(0xffD8DADC),
          ),
        )
      ],
    );
  }
}
