import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../features/home/presentation/screens/development_tools_screen.dart';
import '../utils/colors.dart';
import 'custom_text.dart';

class CardDevelopmentTools extends StatelessWidget{
  CardDevelopmentScreenModel cardDevelopmentScreenModel;
  CardDevelopmentTools({required this.cardDevelopmentScreenModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.symmetric(horizontal: 10.w, vertical: 14.h),
      decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: whiteColor, width: 1)
      ),
      child: Row(
        children: [
          Image.asset(cardDevelopmentScreenModel.imagePath),
          SizedBox(width: 12.w,),
          Expanded(
            child: Column(
              children: [
                TextWidget(
                  text: cardDevelopmentScreenModel.title,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  fontColor: splashScreenColor,
                ),
                SizedBox(height: 16.h,),
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: TextWidget(
                    text: cardDevelopmentScreenModel.subTitle,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    fontColor: blackColor,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}