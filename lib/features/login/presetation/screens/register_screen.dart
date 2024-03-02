import 'package:d_syndrame/core/widgets/default_screen.dart';
import 'package:d_syndrame/features/login/presetation/screens/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/utils/colors.dart';
import '../../../../core/widgets/button_custom_widget.dart';
import '../../../../core/widgets/custom_text.dart';
import '../../../../core/widgets/custom_text_form_field.dart';
import '../../../../core/widgets/google_button_widget.dart';

class RegisterScreen extends StatelessWidget{
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  RegisterScreen({super.key});
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
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Image.asset(
                    'assets/images/register_image.png',
                    width: 300.w,
                    height: 200.h,
                  ),
                  Positioned(
                    bottom: 40.h,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextWidget(
                          text: 'Get started',
                          fontColor: blackColor,
                          fontSize: 32.sp,
                          fontWeight: FontWeight.w700,
                        ),
                        TextWidget(
                          text: 'by creating a free account.',
                          fontColor: blackColor,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w300,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextWidget(
                    text: 'Sign up',
                    fontColor: blackColor,
                    fontSize: 32.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ],
              ),
              SizedBox(height: 16.h,),
              CustomTextFormField(
                label: 'user name',
                controller: nameController,
                autoFocus: false,
                radius: 10,
                suffix: const Icon(Icons.email_outlined, color: yellowColor,),
                enabledBorderColor: Colors.transparent,
              ),
              SizedBox(height: 38.h,),
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
              SizedBox(height: 40.h,),
              ButtonCustomWidget(
                buttonColor: blueColor,
                text: 'Sign Up',
                buttonWidth: MediaQuery.of(context).size.width,
              ),
              SizedBox(height: 32.h,),
              Row(
                children: [
                  SvgPicture.asset('assets/images/divider_left_or.svg', width: 100.w,),
                  SizedBox(width: 14.w,),
                  TextWidget(
                    text: 'Or Sign up With',
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
              ),
              SizedBox(height: 20.h,),
              Row(
                children: [
                  TextWidget(
                    text: 'Already have an account?',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    fontColor: blackColor,
                    textDecoration: TextDecoration.underline,
                  ),
                  SizedBox(width: 10.w,),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                    },
                    child: TextWidget(
                      text: 'Login',
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      fontColor: blackColor,
                      textDecoration: TextDecoration.underline,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}