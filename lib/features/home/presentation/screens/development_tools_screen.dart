import 'package:d_syndrame/core/utils/colors.dart';
import 'package:d_syndrame/core/widgets/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/widgets/card_development_tools.dart';
import '../../../../core/widgets/default_screen.dart';
import '../../../../core/widgets/search_Text_form.dart';

class DevelopmentToolsScreen extends StatelessWidget{
  TextEditingController searchController = TextEditingController();
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
              text: 'ادوات تنمية مهارات الطفل',
              fontWeight: FontWeight.w700,
              fontColor: splashScreenColor,
              fontSize: 20.sp,
            ),
            SizedBox(height: 8.h,),
            Directionality(
              textDirection: TextDirection.rtl,
              child: TextWidget(
                text: 'تعد ادوات تنمية مهارات من اهم الاشياء التي تركز علي رفع مستوي ذكاء الطفل و هنا نستعرض اهم هذه الادوات',
                fontWeight: FontWeight.w600,
                fontColor: textLabelColor3,
                fontSize: 14.sp,
                height: 1,
              ),
            ),
            SizedBox(height: 20.h,),
            Padding(
              padding: EdgeInsetsDirectional.symmetric(horizontal: 52.w),
              child: Row(
                children: [
                  SearchTextForm(searchController: searchController,),
                ],
              ),
            ),
            SizedBox(height: 34.h,),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) => CardDevelopmentTools(
                  cardDevelopmentScreenModel: cardsDevelopment[index],
                ),
                itemCount: cardsDevelopment.length,
                separatorBuilder: (context, index) => SizedBox(height: 16.h,),
              ),
            )
          ],
        ),
      ),
    );
  }

  List <CardDevelopmentScreenModel> cardsDevelopment = [
    CardDevelopmentScreenModel(
        title: 'لعبة الرسم',
        subTitle: 'التلوين ليس وسيلة للعب  فقط و لكنة يساعد الطفل ايضا علي التامل....',
        imagePath: 'assets/images/card1.png',
    ),
    CardDevelopmentScreenModel(
      title: 'لعبة البازل',
      subTitle: 'تعد لعبة البازل المجسم من افضل الالعاب التي تجذب الاطفال و تعمل في الوقت نفسه علي....',
      imagePath: 'assets/images/card2.png',
    ),
    CardDevelopmentScreenModel(
      title: 'لعبة المكعبات',
      subTitle: 'من افضل الالعاب التي ستساعدك علي تنمية مهارات طفلك هي المكعبات التعليمية و التي......',
      imagePath: 'assets/images/card3.png',
    ),
  ];
}

class CardDevelopmentScreenModel{
  final String title;
  final String subTitle;
  final String imagePath;
  CardDevelopmentScreenModel({
    required this.title,
    required this.subTitle,
    required this.imagePath
  });
}