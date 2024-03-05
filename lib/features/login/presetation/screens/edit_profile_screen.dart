import 'package:d_syndrame/core/widgets/custom_text.dart';
import 'package:d_syndrame/core/widgets/default_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utils/colors.dart';
import '../../../../core/widgets/button_custom_widget.dart';
import '../../../../core/widgets/text_form_edit_profile.dart';

class EditProfileScreen extends StatelessWidget{
  EditProfileScreen({super.key});
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    nameController.text = 'Hamza Ail';
    emailController.text = 'hamzaail249@gmail.com';
    mobileController.text = '+91 1234567890';
    return DefaultScreen(
      sizeAppbar: Size.zero,
      backgroundColor: mainColor,
      body: Padding(
        padding: EdgeInsetsDirectional.symmetric(vertical: 20.w),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsetsDirectional.symmetric(horizontal: 28.w),
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextWidget(
                        text: 'Edit Profile',
                        fontColor: textBlackColor1,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                      )
                    ],
                  ),
                  GestureDetector(
                      onTap: (){
                        Navigator.pop(context);  
                      },
                      child: SvgPicture.asset('assets/images/back_icon.svg'))
                ],
              ),
            ),
            SizedBox(height: 10.h,),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Container(
                          width: 80.w,
                          height: 80.h,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage('assets/images/profile.png')
                              )
                          ),
                        ),
                        SvgPicture.asset('assets/images/edit_picture.svg')
                      ],
                    ),
                    SizedBox(height: 60.h,),
                    TextFormEditProfile(label: 'Full Name', controller: nameController,),
                    SizedBox(height: 20.h,),
                    TextFormEditProfile(label: 'Email', controller: emailController,),
                    SizedBox(height: 20.h,),
                    TextFormEditProfile(label: 'Mobile Number', controller: mobileController,),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.symmetric(horizontal: 16.w),
              child: ButtonCustomWidget(
                text: 'Save changes',
                buttonColor: splashScreenColor,
                buttonWidth: double.infinity,
              ),
            )
          ],
        ),
      ),
    );
  }
}