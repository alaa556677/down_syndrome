import 'package:d_syndrame/core/utils/colors.dart';
import 'package:d_syndrame/core/widgets/default_screen.dart';
import 'package:d_syndrame/features/home/presentation/screens/quiz_login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuizSplashScreen extends StatefulWidget{
  const QuizSplashScreen({super.key});
  @override
  State<QuizSplashScreen> createState() => _QuizSplashScreenState();
}

class _QuizSplashScreenState extends State<QuizSplashScreen> {

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), (){
      Navigator.push(context, MaterialPageRoute(builder: (context) => QuizLoginScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultScreen(
      sizeAppbar: Size.zero,
      backgroundColor: mainColor,
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Image.asset('assets/images/background_quiz.png', fit: BoxFit.fill,),
          Positioned(
              top: 200.h,
              child: Image.asset('assets/images/quiz.png', width: 250.w, height: 220.h,)),
        ],
      ),
    );
  }
}