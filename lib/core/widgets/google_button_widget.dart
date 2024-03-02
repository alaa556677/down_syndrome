import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/colors.dart';

class GoogleFaceButton extends StatelessWidget{
  const GoogleFaceButton({super.key, required this.sVGPath});
  final String sVGPath;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        width: 52.w,
        height: 52.h,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: googleContainerColor,
            border: Border.all(color: googleContainerBorderColor, width: .5)
        ),
        alignment: Alignment.center,
        child: SvgPicture.asset(sVGPath, width: 30.w, height: 30.h,),
      ),
    );
  }
}