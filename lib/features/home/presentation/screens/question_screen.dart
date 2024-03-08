import 'package:d_syndrame/core/utils/colors.dart';
import 'package:d_syndrame/core/widgets/custom_text.dart';
import 'package:d_syndrame/core/widgets/default_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/widgets/button_custom_widget.dart';
import '../../../../core/widgets/card_choose_quiz.dart';

class QuestionScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultScreen(
      sizeAppbar: Size.zero,
      backgroundColor: mainColor,
      body: Padding(
        padding: EdgeInsetsDirectional.only(start: 36.w, end: 36.w, top: 50.h),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 186.h,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: mainColor,
                borderRadius: BorderRadius.circular(25.r),
                boxShadow: [
                  BoxShadow(
                    color: blackColor.withOpacity(.5),
                    blurRadius: 6,
                    offset: const Offset(0,3),
                  ),
                ]
              ),
              padding: EdgeInsetsDirectional.symmetric(vertical: 0.h),
              child: Image.asset("assets/images/banana.png"),
            ),
            SizedBox(height: 40.h,),
            const CardChooseQuiz(
              containerColor: containerChooseColor,
              title: 'برتقالة',
            ),
            SizedBox(height: 40.h,),
            const CardChooseQuiz(
              containerColor: containerChooseColor,
              title: 'تفاحة',
            ),
            SizedBox(height: 40.h,),
            const CardChooseQuiz(
              containerColor: containerChooseColor,
              title: 'جوافة',
            ),
            SizedBox(height: 40.h,),
            const CardChooseQuiz(
              containerColor: containerChooseColor,
              title: 'موزة',
            ),
            SizedBox(height: 24.h,),
            TextWidget(
              text: 'Correct..',
              fontWeight: FontWeight.w600,
              fontColor: greenColor,
              fontSize: 36.sp,
            ),
            SizedBox(height: 14.h,),
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(26),
                      gradient: LinearGradient(
                        begin: Alignment.center,
                        end: Alignment.centerLeft,
                        colors: [
                          colorOne,
                          colorTwo,
                        ],
                      )
                    ),
                    alignment: Alignment.center,
                    padding: EdgeInsetsDirectional.symmetric(vertical: 8.h),
                    child: TextWidget(
                      text: 'Back',
                      fontSize: 24.sp,
                      fontColor: blackColor,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(width: 30.w,),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(26),
                        gradient: LinearGradient(
                          begin: Alignment.center,
                          end: Alignment.centerRight,
                          colors: [
                            colorOne,
                            colorTwo,
                          ],
                        )
                    ),
                    alignment: Alignment.center,
                    padding: EdgeInsetsDirectional.symmetric(vertical: 8.h),
                    child: TextWidget(
                      text: 'Next',
                      fontSize: 24.sp,
                      fontColor: blackColor,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}