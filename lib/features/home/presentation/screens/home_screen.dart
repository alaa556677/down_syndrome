import 'package:d_syndrame/core/utils/colors.dart';
import 'package:d_syndrame/features/home/presentation/screens/quiz_splash_screen.dart';
import 'package:d_syndrame/features/home/presentation/screens/schools_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/widgets/card_school_center.dart';
import '../../../../core/widgets/custom_text.dart';
import '../../../../core/widgets/home_component_widget.dart';
import '../../../../core/widgets/search_Text_form.dart';
import 'book_screen.dart';
import 'development_tools_screen.dart';

class HomeScreen extends StatelessWidget{
  TextEditingController searchController = TextEditingController();
  HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: 16.w, top: 24.h, end: 16.w),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 46.w,
                height: 46.h,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/images/picture.png')
                  )
                ),
              ),
              const Icon(Icons.notifications_none, color: yellowColor,)
            ],
          ),
          SizedBox(height: 16.h,),
          Row(
            children: [
              TextWidget(
                text: 'Hello ',
                fontColor: blackColor,
                fontWeight: FontWeight.w700,
                fontSize: 24.sp,
              ),
              TextWidget(
                text: 'Hamza!',
                fontColor: blackColor,
                fontWeight: FontWeight.w100,
                fontSize: 24.sp,
              )
            ],
          ),
          SizedBox(height: 12.h,),
          Row (
            children: [
              SearchTextForm(searchController: searchController,),
              SizedBox(width: 20.w,),
              SvgPicture.asset('assets/images/filter.svg')
            ],
          ),
          SizedBox(height: 40.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextWidget(
                text: 'Services',
                fontSize: 24.sp,
                fontColor: textBlackColor,
                fontWeight: FontWeight.w600,
              ),
              Container(
                padding: EdgeInsetsDirectional.symmetric(horizontal: 10.w, vertical: 4.h),
                decoration: BoxDecoration(
                  color: splashScreenColor,
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextWidget(
                      text: 'see all',
                      fontSize: 13.sp,
                      fontColor: whiteColor,
                      fontWeight: FontWeight.w400,
                    ),
                    SizedBox(width: 4.w,),
                    SvgPicture.asset('assets/images/arrow.svg')
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 18.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HomeComponent(
                title: 'اختبار قياس مستوي ذكاء الطفل',
                imagePath: 'assets/images/test.png',
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => QuizSplashScreen()));
                },
              ),
              HomeComponent(
                title: 'ادوات تنمية مهارات الطفل',
                imagePath: 'assets/images/tools.png',
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DevelopmentToolsScreen()));
                },
              ),
            ],
          ),
          SizedBox(height: 24.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HomeComponent(
                title: 'المراكز والمدارس',
                imagePath: 'assets/images/school.png',
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SchoolsAndCentersScreen()));
                },
              ),
              HomeComponent(
                title: 'مقالات مختلفة',
                imagePath: 'assets/images/article.png',
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => BookScreen()));
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}