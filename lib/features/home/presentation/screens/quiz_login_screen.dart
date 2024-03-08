import 'package:d_syndrame/core/utils/colors.dart';
import 'package:d_syndrame/core/widgets/default_screen.dart';
import 'package:d_syndrame/features/home/presentation/screens/question_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/widgets/button_custom_widget.dart';
import '../../../../core/widgets/custom_text_form_field.dart';

class QuizLoginScreen extends StatelessWidget{
  TextEditingController nameController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  QuizLoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return DefaultScreen(
      sizeAppbar: Size.zero,
      backgroundColor: mainColor,
      body: Padding(
        padding: EdgeInsetsDirectional.only(start: 36.w, end: 36.w, top: 56.h),
        child: Column(
          children: [
            SvgPicture.asset("assets/images/quiz_login.svg"),
            SizedBox(height: 36.h,),
            Directionality(
              textDirection: TextDirection.rtl,
              child: CustomTextFormField(
                label: 'اسم الطفل',
                controller: nameController,
                autoFocus: false,
                radius: 10,
                enabledBorderColor: Colors.transparent,
              ),
            ),
            SizedBox(height: 36.h,),
            Directionality(
              textDirection: TextDirection.rtl,
              child: CustomTextFormField(
                label: 'تاريخ الميلاد',
                controller: dateController,
                autoFocus: false,
                radius: 10,
                enabledBorderColor: Colors.transparent,
              ),
            ),
            SizedBox(height: 44.h,),
            ButtonCustomWidget(
              buttonColor: blueColor,
              text: 'Next',
              buttonWidth: MediaQuery.of(context).size.width,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => QuestionScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}