import 'package:d_syndrame/core/utils/colors.dart';
import 'package:d_syndrame/core/widgets/default_screen.dart';
import 'package:d_syndrame/features/login/presetation/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/button_custom_widget.dart';
import '../../../../core/widgets/custom_text.dart';
import '../../../../core/widgets/custom_text_form_field.dart';

class ResetPasswordScreen extends StatelessWidget{
  TextEditingController passwordController = TextEditingController();
  TextEditingController repeatPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return DefaultScreen(
      sizeAppbar: Size.zero,
      backgroundColor: mainColor,
      body: Padding(
        padding: EdgeInsetsDirectional.symmetric(horizontal: 24.w, vertical: 80.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextWidget(
                  text: 'Reset Password',
                  fontSize: 26.sp,
                  fontWeight: FontWeight.w600,
                  fontColor: blackColor,
                ),
              ],
            ),
            SizedBox(height: 30.h,),
            TextWidget(
              text: 'Create New Password',
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              fontColor: blackColor,
            ),
            SizedBox(height: 8.h,),
            TextWidget(
              text: 'This password should be different from the previous password',
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
              fontColor: textLabelColor2,
            ),
            SizedBox(height: 54.h,),
            CustomTextFormField(
              label: 'New Password',
              controller: passwordController,
              autoFocus: false,
              radius: 10,
              suffix: const Icon(Icons.lock_outline, color: yellowColor,),
              enabledBorderColor: Colors.transparent,
            ),
            SizedBox(height: 34.h,),
            CustomTextFormField(
              label: 'New Password',
              controller: repeatPasswordController,
              autoFocus: false,
              radius: 10,
              suffix: const Icon(Icons.lock_outline, color: yellowColor,),
              enabledBorderColor: Colors.transparent,
            ),
            SizedBox(height: 72.h,),
            ButtonCustomWidget(
              buttonColor: blueColor,
              text: 'Reset Password',
              buttonWidth: MediaQuery.of(context).size.width,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) =>  LoginScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}