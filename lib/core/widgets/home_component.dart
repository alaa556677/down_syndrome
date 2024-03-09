// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'custom_text.dart';

class HomeComponent extends StatelessWidget {
  HomeComponent(
      {super.key,
      this.isSvg = false,
      this.colorContainer,
      this.heightContainer,
      this.widthContainer,
      this.radius = 15,
      this.pathImage,
      this.text,
      this.fontSize,
      this.fontWeight,
      this.fontColor,
      this.imageHeight,
      this.imageWidth,
      this.onTap});
  double? widthContainer;
  double? heightContainer;
  Color? colorContainer;
  double radius;
  bool isSvg;
  String? pathImage;
  double? imageWidth;
  double? imageHeight;
  /////////////////////////////
  String? text;
  double? fontSize;
  Color? fontColor;
  FontWeight? fontWeight;
  void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: widthContainer,
        height: heightContainer,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: colorContainer,
            borderRadius: BorderRadius.circular(radius),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(.2),
                  offset: const Offset(0, 0),
                  blurRadius: 14)
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            isSvg
                ? SvgPicture.asset(
                    pathImage!,
                    width: imageWidth,
                    height: imageHeight,
                  )
                : Image.asset(
                    pathImage!,
                    width: imageWidth,
                    height: imageHeight,
                  ),
            const SizedBox(
              height: 14,
            ),
            TextWidget(
              text: text,
              fontSize: fontSize,
              fontColor: fontColor,
              fontWeight: fontWeight,
            )
          ],
        ),
      ),
    );
  }
}
