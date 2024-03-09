import 'package:d_syndrame/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/colors.dart';

class ImageItemHorizontal extends StatelessWidget {
  const ImageItemHorizontal({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.symmetric(horizontal: 10.w, vertical: 14.h),
      decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: whiteColor, width: 1)
      ),
      child: Row(
        children: [
          Container(
            width: 84.w,
            height: 120.h,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image),
              ),
            ),
          ),
          SizedBox(width: 20.w,),
          Expanded(
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextWidget(
                    text:  "متلازمة داون حقائق وارشادات",
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                    fontColor: blackColor,
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: TextSpan(
                          style: TextStyle(fontSize: 8.sp, color: Colors.grey),
                          children: [
                            TextSpan(
                              text: "مؤلف: ",
                              style: TextStyle(
                                decoration: TextDecoration.none,
                              ),
                            ),
                            TextSpan(
                              text: "ضيدان بن محمد آل مسفر",
                              style:
                              TextStyle(decoration: TextDecoration.underline),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: (){},
                        child: Container(
                          width: 60.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(26),
                              gradient: const LinearGradient(
                                begin: Alignment.center,
                                end: Alignment.centerRight,
                                colors: [
                                  colorOne,
                                  colorTwo,
                                ],
                              )
                          ),
                          alignment: Alignment.center,
                          padding: EdgeInsetsDirectional.symmetric(vertical: 1.h),
                          child: TextWidget(
                            text:  "تفاصيل",
                            fontSize: 12.sp,
                            fontColor: blackColor,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
