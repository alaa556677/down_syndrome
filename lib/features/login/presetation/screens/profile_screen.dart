import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/colors.dart';
import '../../../../core/widgets/custom_text.dart';
import '../../../../core/widgets/item_edit_profile.dart';
import 'edit_profile_screen.dart';

class ProfileScreen extends StatelessWidget{
    ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.symmetric(vertical: 24.h),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextWidget(
                text: "Profile",
                fontSize: 20.sp,
                fontWeight: FontWeight.w700,
                fontColor: textBlackColor1,
              ),
            ],
          ),
          SizedBox(height: 50.h,),
          Padding(
            padding: EdgeInsetsDirectional.symmetric(horizontal: 16.h),
            child: Row(
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
                SizedBox(width: 8.w,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidget(
                      text: 'Hamza Ail',
                      fontSize: 16.sp,
                      fontColor: textBlackColor1,
                      fontWeight: FontWeight.w600,
                    ),
                    SizedBox(height: 4.h,),
                    TextWidget(
                      text: '+91 1234567890',
                      fontSize: 12.sp,
                      fontColor: textBlackColor1,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 24.h,),
          Container(width: double.infinity, height: .5.h, color: whiteColor,),
          SizedBox(height: 34.h,),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) => ItemEditProfile(
                editProfileModel: editProfileData[index],
                onTap: (){
                  switch (index){
                    case 0:
                      Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfileScreen()));
                      break;
                  }
                },
              ),
              itemCount: editProfileData.length,
            ),
          )
        ],
      ),
    );
  }

  List <EditProfileModel> editProfileData = [
    EditProfileModel(
      title: 'Edit Profile',
      imagePath: 'assets/images/edit.svg',
      suffixPath: 'assets/images/arrow.svg'
    ),
    EditProfileModel(
        title: 'Sharing',
        imagePath: 'assets/images/share.svg',
        suffixPath: 'assets/images/arrow.svg'
    ),
    EditProfileModel(
        title: 'Rate us',
        imagePath: 'assets/images/rate.svg',
        suffixPath: 'assets/images/arrow.svg'
    ),
    EditProfileModel(
        title: 'Help',
        imagePath: 'assets/images/help.svg',
        suffixPath: 'assets/images/arrow.svg'
    ),
    EditProfileModel(
        title: 'Logout',
        imagePath: 'assets/images/log_out.svg',
        suffixPath: 'assets/images/arrow.svg'
    ),
  ];
}

class EditProfileModel{
  final String imagePath;
  final String title;
  final String suffixPath;
  EditProfileModel({
    required this.imagePath,
    required this.title,
    required this.suffixPath
  });
}