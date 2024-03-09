import 'package:d_syndrame/core/utils/colors.dart';
import 'package:d_syndrame/core/widgets/custom_text.dart';
import 'package:d_syndrame/core/widgets/default_screen.dart';
import 'package:d_syndrame/core/widgets/page_view_question.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/widgets/card_choose_quiz.dart';

class QuestionScreen extends StatefulWidget{
  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  bool orange = false;
  bool apple = false;
  bool banana = false;
  bool gwafa = false;
  PageController? myController;
  int pageIndex = 0;
  @override
  void initState() {
    myController = PageController (
      initialPage: pageIndex,
      viewportFraction: 1,);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return DefaultScreen(
      sizeAppbar: Size.zero,
      backgroundColor: mainColor,
      body: PageView(
        controller: myController,
        onPageChanged: (index){
          setState(() {
            pageIndex = index;
          });
        },
        children: [
          PageViewScreen(
            choose1: orange,
            choose2: apple,
            choose3: gwafa,
            choose4: banana,
            onNextTap: () {
              myController?.animateToPage(pageIndex+1, duration: const Duration(milliseconds: 200), curve:Curves.easeIn);
            },
            onBackTap: (){
              myController?.animateToPage(pageIndex-1, duration: const Duration(milliseconds: 200), curve:Curves.easeIn);
            },
          ),
          PageViewScreen(
            choose1: orange,
            choose2: apple,
            choose3: gwafa,
            choose4: banana,
            onNextTap: () {
              myController?.animateToPage(pageIndex+1, duration: const Duration(milliseconds: 200), curve:Curves.easeIn);
            },
            onBackTap: (){
              myController?.animateToPage(pageIndex-1, duration: const Duration(milliseconds: 200), curve:Curves.easeIn);
            },
          ),
        ],
      ),
    );
  }
}
