import 'package:d_syndrame/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/widgets/custom_text.dart';

class HomeScreen extends StatelessWidget{
  TextEditingController searchController = TextEditingController();
  HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 46.w,
              height: 46.h,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/images/picture.png')
                )
              ),
            ),
            const Icon(Icons.notifications_none, color: yellowColor,)
          ],
        ),
        SizedBox(height: 16.h,),
        Row(
          children: [
            TextWidget(
              text: 'Hello ',
              fontColor: blackColor,
              fontWeight: FontWeight.w700,
              fontSize: 24.sp,
            ),
            TextWidget(
              text: 'Hamza!',
              fontColor: blackColor,
              fontWeight: FontWeight.w100,
              fontSize: 24.sp,
            ),
            SizedBox(height: 12.h,),
            // TextFormField(
            //   controller: searchController,
            //   decoration: InputDecoration(
            //     enabledBorder: OutlineInputBorder(
            //         borderRadius: BorderRadius.circular(10),
            //         borderSide: BorderSide(
            //           color: Colors.transparent,
            //         )
            //     ),
            //     prefix: Icon(Icons.search, color: blackColor,),
            //     label: Padding(
            //       padding: EdgeInsets.symmetric(horizontal: 0),
            //       child: TextWidget(
            //         text: 'Search',
            //         fontColor: blackColor,
            //         fontSize: 12.sp,
            //         fontWeight: FontWeight.w300,
            //       ),
            //     ),
            //   ),
            // )
          ],
        )
      ],
    );
  }
}