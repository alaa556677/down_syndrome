import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/colors.dart';
import 'custom_text.dart';

class CardChooseQuiz extends StatelessWidget{
  CardChooseQuiz({super.key, required this.containerColor, required this.title, this.onTap});
  final Color containerColor;
  final String title;
  void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 56.h,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: containerColor,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(0,3),
                  blurRadius: 3,
                  color: blackColor.withOpacity(.6)
              )
            ]
        ),
        child: TextWidget(
          text: title,
          fontSize: 24.sp,
          fontColor: blackColor,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}