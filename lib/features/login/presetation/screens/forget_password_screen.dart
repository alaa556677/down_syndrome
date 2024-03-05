import 'package:d_syndrame/core/utils/colors.dart';
import 'package:d_syndrame/core/widgets/default_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/widgets/button_custom_widget.dart';
import '../../../../core/widgets/custom_text.dart';
import '../../../../core/widgets/custom_text_form_field.dart';
import 'code_forget_password.dart';

class ForgetPasswordScreen extends StatelessWidget{
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return DefaultScreen(
      sizeAppbar: Size.zero,
      backgroundColor: mainColor,
      body: Padding(
        padding: EdgeInsetsDirectional.symmetric(horizontal: 40.w, vertical: 56.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/images/lock_forget.png'),
              SizedBox(height: 20.h,),
              TextWidget(
                text: 'Forget Password',
                fontSize: 24.sp,
                fontColor: blackColor,
                fontWeight: FontWeight.w600,
              ),
              SizedBox(height: 10.h,),
              TextWidget(
                text: 'Enter the Email address with your account and well send an email with confirmation th reset your password',
                fontSize: 10.sp,
                fontColor: textLabelColor1,
                fontWeight: FontWeight.w600,
              ),
              SizedBox(height: 58.h,),
              CustomTextFormField(
                label: 'email',
                controller: emailController,
                autoFocus: false,
                radius: 10,
                suffix: const Icon(Icons.email_outlined, color: yellowColor,),
                enabledBorderColor: Colors.transparent,
              ),
              SizedBox(height: 90.h,),
              ButtonCustomWidget(
                buttonColor: blueColor,
                text: 'Send Code',
                buttonWidth: MediaQuery.of(context).size.width,
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>  CodeForgetPassword()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}