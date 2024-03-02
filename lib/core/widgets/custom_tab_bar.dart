import 'package:flutter/material.dart';

import '../utils/colors.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({
    super.key,
    required this.tabController,
    required this.tabList,
  });

  final TabController? tabController;
  final List<Widget> tabList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.symmetric(horizontal: 28,vertical: 10),
      child: Container(
        height: 55,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(9),
          color: blueColor.withOpacity(0.12),
          // border: Border.all(color: ,width:3),

        ),
        child: TabBar(
          controller: tabController,
          indicatorColor: Colors.transparent,
          labelColor: blueColor,
          isScrollable: false,
          indicatorSize: TabBarIndicatorSize.label,
          labelPadding: EdgeInsetsDirectional.only(start: 0.5),
          indicator: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
            border: Border.all(
                color: blueColor, width: 1.5),
            borderRadius: BorderRadius.circular(7),
            // border: BoxBorder()
          ),
          tabs: tabList,
        ),
      ),
    );
  }
}