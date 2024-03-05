import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/colors.dart';
import 'custom_text.dart';

class HomeComponent extends StatelessWidget{
  String imagePath;
  String title;
  void Function()? onTap;
  HomeComponent({super.key, required this.imagePath, required this.title, this.onTap});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 150.w,
        height: 210.h,
        padding: EdgeInsetsDirectional.symmetric(horizontal: 10.w, vertical: 0.h),
        decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(14),
            border: Border.all(color: whiteColor, width: 1)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imagePath),
            SizedBox(height: 10.h,),
            TextWidget(
              text: title,
              fontWeight: FontWeight.w600,
              fontColor: splashScreenColor,
              fontSize: 14.sp,
              align: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}