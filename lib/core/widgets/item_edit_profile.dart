import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../features/login/presetation/screens/edit_profile_screen.dart';
import '../../features/login/presetation/screens/profile_screen.dart';
import '../utils/colors.dart';
import 'custom_text.dart';

class ItemEditProfile extends StatelessWidget{
  EditProfileModel editProfileModel;
  void Function()? onTap;
  ItemEditProfile({super.key, required this.editProfileModel, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: SvgPicture.asset(editProfileModel.imagePath),
      title: TextWidget(
        text: editProfileModel.title,
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
        fontColor: textBlackColor1,
      ),
      trailing: SvgPicture.asset(editProfileModel.suffixPath, color: textBlackColor1 ,),
    );
  }
}
