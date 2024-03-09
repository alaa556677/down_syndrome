import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../utils/colors.dart';
import 'custom_text.dart';

class CardSchoolCenter extends StatelessWidget{
  final CardSchoolEntity cardSchoolEntity;
  const CardSchoolCenter({super.key, required this.cardSchoolEntity});
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
          Image.asset(cardSchoolEntity.imagePath, width: 100.w, height: 100,),
          SizedBox(width: 12.w,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: TextWidget(
                    text: cardSchoolEntity.title,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    fontColor: blackColor,
                  ),
                ),
                SizedBox(height: 16.h,),
                cardSchoolEntity.address != null ? Directionality(
                    textDirection: TextDirection.rtl,
                    child: ListTile(
                      title: TextWidget(
                        text: cardSchoolEntity.address,
                        fontSize: 8.sp,
                        fontWeight: FontWeight.w600,
                        fontColor: textLabelColor3,
                      ),
                      trailing: SvgPicture.asset('assets/images/location.svg'),
                    )
                ) : Container(),
                cardSchoolEntity.mobile != null ? Directionality(
                    textDirection: TextDirection.rtl,
                    child: ListTile(
                      title: TextWidget(
                        text: cardSchoolEntity.mobile,
                        fontSize: 8.sp,
                        fontWeight: FontWeight.w600,
                        fontColor: textLabelColor3,
                      ),
                      trailing: SvgPicture.asset('assets/images/mobile.svg'),
                    )
                ) : Container(),
                cardSchoolEntity.email != null ? Directionality(
                    textDirection: TextDirection.rtl,
                    child: ListTile(
                      title: TextWidget(
                        text: cardSchoolEntity.email,
                        fontSize: 8.sp,
                        fontWeight: FontWeight.w600,
                        fontColor: textLabelColor3,
                      ),
                      trailing: SvgPicture.asset('assets/images/mobile.svg'),
                    )
                ) : Container(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CardSchoolEntity {
  final String imagePath;
  final String title;
  String? address;
  String? mobile;
  String? email;
  CardSchoolEntity({
    required this.imagePath,
    required this.title,
    this.address,
    this.mobile,
    this.email
  });
}