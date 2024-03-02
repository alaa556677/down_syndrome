import 'package:d_syndrame/core/widgets/default_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/utils/colors.dart';
import '../../../../core/widgets/button_custom_widget.dart';
import '../../../../core/widgets/custom_text.dart';
import '../../../../core/widgets/custom_text_form_field.dart';
import '../../../../core/widgets/google_button_widget.dart';

class LoginScreen extends StatelessWidget{
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return DefaultScreen(
      sizeAppbar: const Size(0,0),
      backgroundColor: mainColor,
      body: Padding(
        padding: EdgeInsetsDirectional.symmetric(vertical: 34.h, horizontal: 32.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SvgPicture.asset('assets/images/login_image.svg'),
              SizedBox(height: 32.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextWidget(
                    text: 'Login',
                    fontColor: blackColor,
                    fontSize: 32.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ],
              ),
              SizedBox(height: 16.h,),
              CustomTextFormField(
                label: 'email',
                controller: emailController,
                autoFocus: false,
                radius: 10,
                suffix: const Icon(Icons.email_outlined, color: yellowColor,),
                enabledBorderColor: Colors.transparent,
              ),
              SizedBox(height: 38.h,),
              CustomTextFormField(
                label: 'password',
                controller: passwordController,
                autoFocus: false,
                radius: 10,
                suffix: const Icon(Icons.lock_outline, color: yellowColor,),
                enabledBorderColor: Colors.transparent,
              ),
              SizedBox(height: 14.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextWidget(
                    text: 'Forgot Password?',
                    fontWeight: FontWeight.w700,
                    fontSize: 16.sp,
                    fontColor: blueColor,
                  )
                ],
              ),
              SizedBox(height: 30.h,),
              ButtonCustomWidget(
                buttonColor: blueColor,
                text: 'Login',
                buttonWidth: MediaQuery.of(context).size.width,
              ),
              SizedBox(height: 62.h,),
              Row(
                children: [
                  SvgPicture.asset('assets/images/divider_left_or.svg', width: 100.w,),
                  SizedBox(width: 14.w,),
                  TextWidget(
                    text: 'Or Login With',
                    fontWeight: FontWeight.w500,
                    fontSize: 12.sp,
                    fontColor: greyTextColor,
                  ),
                  SizedBox(width: 14.w,),
                  SvgPicture.asset('assets/images/divider_right_or.svg', width: 100.w,),
                ],
              ),
              SizedBox(height: 36.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const GoogleFaceButton(
                    sVGPath: 'assets/images/google_logo.svg',
                  ),
                  SizedBox(width: 62.w,),
                  const GoogleFaceButton(
                    sVGPath: 'assets/images/facebook_logo.svg',
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}