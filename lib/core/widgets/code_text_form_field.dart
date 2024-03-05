import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utils/colors.dart';

class CodeTextFormField extends StatelessWidget{
  TextEditingController controller;
  CodeTextFormField({required this.controller});
  @override
  Widget build(BuildContext context) {
    return Expanded(child: Container(
      width: 56.w,
      height: 60.h,
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(color: blackColor),
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextFormField(
        controller: controller,
        style: TextStyle(
            fontSize: 30.sp,
            fontWeight: FontWeight.w600,
            color: blackColor
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
        ),
      ),
    ));
  }
}