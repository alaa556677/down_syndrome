import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utils/colors.dart';
import 'card_choose_quiz.dart';
import 'custom_text.dart';

class PageViewScreen extends StatefulWidget {
  bool? choose1;
  bool? choose2;
  bool? choose3;
  bool? choose4;
  void Function()? onNextTap;
  void Function()? onBackTap;
  PageViewScreen({this.choose3, this.choose4, this.choose2, this.choose1, this.onNextTap, this.onBackTap});
  @override
  State<PageViewScreen> createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
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
          CardChooseQuiz(
            containerColor: widget.choose1! ? errorColor : containerChooseColor,
            title: 'برتقالة',
            onTap: (){
              setState(() {
                widget.choose2 = false;
                widget.choose3 = false;
                widget.choose1 = true;
                widget.choose4 = false;
              });
            },
          ),
          SizedBox(height: 40.h,),
          CardChooseQuiz(
            containerColor: widget.choose2! ? errorColor : containerChooseColor,
            title: 'تفاحة',
            onTap: (){
              setState(() {
                widget.choose2 = true;
                widget.choose3 = false;
                widget.choose1 = false;
                widget.choose4 = false;
              });
            },
          ),
          SizedBox(height: 40.h,),
          CardChooseQuiz(
            containerColor: widget.choose4! ? errorColor : containerChooseColor,
            title: 'جوافة',
            onTap: (){
              setState(() {
                widget.choose2 = false;
                widget.choose3 = false;
                widget.choose1 = false;
                widget.choose4 = true;
              });
            },
          ),
          SizedBox(height: 40.h,),
          CardChooseQuiz(
            containerColor: widget.choose3! ? greenColor2 : containerChooseColor,
            title: 'موزة',
            onTap: (){
              setState(() {
                widget.choose2 = false;
                widget.choose3 = true;
                widget.choose1 = false;
                widget.choose4 = false;
              });
            },
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
                child: GestureDetector(
                  onTap: widget.onBackTap,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(26),
                        gradient: const LinearGradient(
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
              ),
              SizedBox(width: 30.w,),
              Expanded(
                child: GestureDetector(
                  onTap: widget.onNextTap,
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
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}