import 'package:d_syndrame/core/utils/colors.dart';
import 'package:d_syndrame/core/widgets/default_screen.dart';
import 'package:d_syndrame/features/login/presetation/screens/reset_password_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/button_custom_widget.dart';
import '../../../../core/widgets/code_text_form_field.dart';
import '../../../../core/widgets/custom_text.dart';

class CodeForgetPassword extends StatelessWidget{
  TextEditingController squareController1 = TextEditingController();
  TextEditingController squareController2 = TextEditingController();
  TextEditingController squareController3 = TextEditingController();
  TextEditingController squareController4 = TextEditingController();
  TextEditingController squareController5 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return DefaultScreen(
      sizeAppbar: Size.zero,
      backgroundColor: mainColor,
      body: Padding(
        padding: EdgeInsetsDirectional.symmetric(horizontal: 40.w, vertical: 80.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextWidget(
                text: 'Please check your Email',
                fontSize: 26.sp,
                fontWeight: FontWeight.w600,
                fontColor: blackColor,
              ),
              SizedBox(height: 10.h,),
              TextWidget(
                text: 'we have sent the code to E*****12@gmail.com',
                fontSize: 11.sp,
                fontWeight: FontWeight.w700,
                fontColor: blackColor,
              ),
              SizedBox(height: 46.h,),
              Row(
                children: [
                  CodeTextFormField(
                    controller: squareController1,
                  ),
                  SizedBox(width: 12.w,),
                  CodeTextFormField(
                    controller: squareController2,
                  ),
                  SizedBox(width: 12.w,),
                  CodeTextFormField(
                    controller: squareController3,
                  ),
                  SizedBox(width: 12.w,),
                  CodeTextFormField(
                    controller: squareController4,
                  ),
                  SizedBox(width: 12.w,),
                  CodeTextFormField(
                    controller: squareController5,
                  ),
                ],
              ),
              SizedBox(height: 26.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextWidget(
                    text: 'Send Code again',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    fontColor: blackColor,
                  ),
                  SizedBox(width: 10.w,),
                  TextWidget(
                    text: '00:36',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w300,
                    fontColor: blackColor,
                  ),
                ],
              ),
              SizedBox(height: 170.h,),
              ButtonCustomWidget(
                buttonColor: blueColor,
                text: 'Verification',
                buttonWidth: MediaQuery.of(context).size.width,
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>  ResetPasswordScreen()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}