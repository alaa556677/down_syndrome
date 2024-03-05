import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/colors.dart';
import 'custom_text.dart';

class TextFormEditProfile extends StatelessWidget{
  final TextEditingController controller;
  final String label;
  TextFormEditProfile({required this.label,required this.controller, super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.symmetric(horizontal: 28.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextWidget(
            text: label,
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
            fontColor: textLabelColor,
          ),
          TextFormField(
            controller: controller,
            style: TextStyle(
                fontSize: 16.sp,
                color: textBlackColor1,
                fontWeight: FontWeight.w600
            ),
            decoration: const InputDecoration(
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: whiteColor,
                  )
              ),
            ),
          )
        ],
      ),
    );
  }
}