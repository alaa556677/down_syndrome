import 'package:d_syndrame/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/card_books_screen.dart';
import '../../../../core/widgets/custom_text.dart';
import '../../../../core/widgets/default_screen.dart';

class BookScreen extends StatelessWidget {
  BookScreen({super.key});
  List<String> images = [
    'assets/images/book1.png',
    'assets/images/book2.png',
    'assets/images/book1.png',
    'assets/images/book2.png',
  ];
  List<String> images2 = [
    'assets/images/book3.png',
    'assets/images/book4.png',
    'assets/images/book5.png',
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultScreen(
      sizeAppbar: Size.zero,
      backgroundColor: mainColor,
      body: Padding(
        padding: EdgeInsetsDirectional.only(top: 56.h),
        child: Column(
          children: [
            TextWidget(
              text: "كتب عن متلازمة داون",
              fontColor: splashScreenColor,
              fontSize: 18.sp,
              fontWeight: FontWeight.w900,
            ),
            SizedBox(height: 10.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.only(end: 25.w),
                  child: TextWidget(
                    text: "view all",
                    fontColor: textColor3,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    textDecoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            SizedBox(
              height: 170.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Container(
                      width: 112.w,
                      height: 168.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          image: AssetImage(
                            images[index],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 40.h),
            Expanded(
              child: ListView.separated(
                itemCount: images2.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsetsDirectional.symmetric(horizontal: 24.w),
                    child: ImageItemHorizontal(
                      image: images2[index],
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>  SizedBox(height: 20.h,),
              ),
            ),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }
}
