import 'package:d_syndrame/core/utils/colors.dart';
import 'package:d_syndrame/core/widgets/default_screen.dart';
import 'package:d_syndrame/features/login/presetation/screens/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/widgets/custom_text.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultScreen(
      sizeAppbar: const Size(0, 0),
      backgroundColor: splashScreenColor,
      body: Padding(
        padding: EdgeInsetsDirectional.only(top: 20.h, bottom: 40.h),
        child: Column(
          children: [
            Image.asset(
              'assets/images/logo_down_syncdrome.png',
              width: 300.w,
              height: 300.h,
            ),
            Image.asset(
              'assets/images/loading.gif',
              width: 48.w,
              height: 48.h,
            ),
            SizedBox(
              height: 8.h,
            ),
            TextWidget(
              text: 'Loading',
              fontSize: 14.sp,
              fontColor: loadingTextColor,
            ),
            const Spacer(),
            Row(
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.only(start: 46.w),
                  child: TextWidget(
                    text: 'Welcome',
                    fontSize: 36.sp,
                    fontColor: blackColor,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 8.h,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.only(start: 46.w),
                  child: TextWidget(
                    text: 'Sign in to your Registered Account',
                    fontSize: 14.sp,
                    fontColor: blackColor,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.only(end: 30.w),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegisterScreen()));
                      },
                      child:
                          SvgPicture.asset('assets/images/arrow_splash.svg')),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
