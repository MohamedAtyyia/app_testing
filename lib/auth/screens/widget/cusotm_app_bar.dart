import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: (){},
          child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color(0xffEDB60D),
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    
                    color: Colors.black.withOpacity(0.2),
                    
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3), // تعديل الإزاحة العمودية والأفقية هنا
                  ),
                ],
              ),
              width: 44.w,
              height: 44.h,
              child:const  Icon(
                Icons.arrow_back_ios,
             //   size: 20,
                color: Colors.black,
              )),
        ),
        Image.asset(
          'assets/image/imag.png',
          width: 39.w,
          height: 39.h,
        )
      ],
    );
  }
}
