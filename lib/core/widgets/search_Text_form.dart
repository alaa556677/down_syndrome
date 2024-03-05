import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/colors.dart';
import 'custom_text.dart';

class SearchTextForm extends StatelessWidget{
  TextEditingController searchController;
  SearchTextForm({super.key, required this.searchController});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        //height: 48.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: whiteColor,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.14),
              offset: Offset(0,3),
              blurRadius: 8
            )
          ]
        ),
        child: TextFormField(
          controller: searchController,
          decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(Icons.search, color: blackColor,),
            hintText: 'Search',
            hintStyle: TextStyle(
              color: blackColor,
              fontSize: 12.sp,
              fontWeight: FontWeight.w300,
            ),
            // label: Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 0),
            //   child: TextWidget(
            //     text: 'Search',
            //     fontColor: blackColor,
            //     fontSize: 12.sp,
            //     fontWeight: FontWeight.w300,
            //   ),
            // ),
          ),
        ),
      ),
    );
  }
}