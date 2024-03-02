import 'package:flutter/material.dart';

import '../utils/colors.dart';
import 'custom_text.dart';

class TabWidget extends StatelessWidget {
  final String label;
  final bool rightDivider;

  TabWidget({super.key,
    required this.label,
    required this.rightDivider,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30 ,
      width: double.infinity,
      // padding: const EdgeInsets.all(0),
      decoration: (rightDivider)
          ? const BoxDecoration(
        border: BorderDirectional(
          end: BorderSide(
            color: blueColor,
            width: 1,
          ),
        ),
      ) : null,
      child: Center(
        child: TextWidget(
          text: label,
          fontSize: 18,
          fontColor: blueColor,
        ),
      ),
    );
  }
}