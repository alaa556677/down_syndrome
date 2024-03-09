import 'package:d_syndrame/core/utils/colors.dart';
import 'package:d_syndrame/core/widgets/default_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/widgets/card_school_center.dart';
import '../../../../core/widgets/custom_text.dart';

class SchoolsAndCentersScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultScreen(
      sizeAppbar: Size.zero,
      backgroundColor: mainColor,
      body: Padding(
        padding: EdgeInsetsDirectional.only(start: 14.w, top: 56.h, end: 14.w),
        child: Column(
          children: [
            TextWidget(
              text: 'المراكز و المدارس',
              fontWeight: FontWeight.w700,
              fontColor: splashScreenColor,
              fontSize: 20.sp,
            ),
            SizedBox(height: 8.h,),
            Directionality(
              textDirection: TextDirection.rtl,
              child: TextWidget(
                text: 'يعد البحث عن المراكز و المدارس التي تتعامل مع اطفال الدوان من اصعب الامور حيث يقل وجود هذه المنشاءت و هنا خصصنا جزء لافضل لاماكن هذه المنشاءت :',
                fontWeight: FontWeight.w600,
                fontColor: textLabelColor3,
                fontSize: 14.sp,
                height: 1,
              ),
            ),
            Row(
              children: [
                Image.asset("assets/images/student.png"),
              ],
            ),
            SizedBox(height: 28.h,),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) => CardSchoolCenter(
                  cardSchoolEntity: schoolsList[index],
                ),
                separatorBuilder: (context,index) => SizedBox(height: 40.h,),
                itemCount: schoolsList.length
              )
            )
          ],
        ),
      ),
    );
  }

  List <CardSchoolEntity> schoolsList = [
    CardSchoolEntity(
      title: 'المركز الذهبي التخصصي',
      imagePath: 'assets/images/school1.png',
      address: '33 Alkhalifa Alamer, behind Hadika Eldawlya, Nasr City.',
      mobile: '(+2) 01011230481 - 01102626909',
      email: 'jobs@gscegypt.com',
    ),
    CardSchoolEntity(
      title: 'مركز إسبيشيل كير لذوى الاحتياجات الخاصة',
      imagePath: 'assets/images/school2.png',
      address: 'فيلا 97 منطقة الفيلات الحى السابع, 6 أكتوبر',
      mobile: '.ت: 38376126- 01227520984',
      email: null,
    ),
  ];
}
