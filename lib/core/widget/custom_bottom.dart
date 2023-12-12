import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({super.key, required this.ontap, required this.title});
  final VoidCallback ontap;
  final String title;
  @override
  Widget build(BuildContext context) {
    return   ElevatedButton(
            onPressed: ontap,
            style: ElevatedButton.styleFrom(
              shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              backgroundColor:  const Color(0xff1C1E21),
              fixedSize: Size(MediaQuery.of(context).size.width *1, 55.h)
            ),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w700
              ),
          
            ),
          );
  }
}