import 'package:d_syndrame/features/splash/presetation/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'features/baseScreen/presentation/screens/base_screen.dart';
import 'features/home/presentation/screens/development_tools_screen.dart';
import 'features/login/presetation/screens/code_forget_password.dart';
import 'features/login/presetation/screens/forget_password_screen.dart';
import 'features/login/presetation/screens/login_screen.dart';
import 'features/login/presetation/screens/register_screen.dart';
import 'features/login/presetation/screens/reset_password_screen.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size (375,812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child){
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: DevelopmentToolsScreen(),
        );
      },
    );
  }
}