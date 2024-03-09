import 'package:d_syndrame/core/utils/colors.dart';
import 'package:d_syndrame/core/widgets/default_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../home/presentation/screens/home_screen.dart';
import '../../../login/presetation/screens/profile_screen.dart';

class BaseScreen extends StatefulWidget{
  @override
  State<BaseScreen> createState() => _BaseScreenState();
}
class _BaseScreenState extends State<BaseScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultScreen(
      sizeAppbar: Size.zero,
      backgroundColor: mainColor,
      body: Column(
        children: [
          Expanded(
            child: screens[currentIndex]
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(start: 18.w, end: 18.w, bottom: 24.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: (){
                      setState(() {
                        currentIndex = 0;
                      });
                    },
                    child: SvgPicture.asset('assets/images/home_icon.svg')),
                GestureDetector(
                    onTap: (){
                      setState(() {
                        currentIndex = 1;
                      });
                    },
                    child: SvgPicture.asset('assets/images/profile_icon.svg')),
              ],
            ),
          )
        ],
      ),
    );
  }

  List screens = [
    HomeScreen(),
    ProfileScreen()
  ];
}