// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utils/colors.dart';
import 'custom_text.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({
    required this.label,
    required this.controller,
    super.key,
    this.validator,
    this.keyboardType,
    this.onChange,
    this.hint,
    this.isEnabled,
    this.prefix,
    this.suffix,
    this.onTap,
    this.readOnly = false,
    this.onFieldSubmitted,
    this.width = 394,
    this.focusNode,
    required this.autoFocus,
    this.contentPaddingHorizontal = 24,
    this.contentPaddingVertical = 12,
    this.radius = 10,
    this.fillColor,
    this.enabledBorderColor = textGreyColor,
    this.focusBorderColor = blueColor,
    this.errorBorderColor = Colors.red,
  });
  String label;
  String? hint;
  TextEditingController controller;
  String? Function(String?)? validator;
  TextInputType? keyboardType;
  Function(String)? onChange;
  Widget? prefix;
  Widget? suffix;
  bool? isEnabled;
  double width;
  dynamic onTap;
  bool readOnly = false;
  Function(String)? onFieldSubmitted;
  FocusNode? focusNode;
  bool? autoFocus = false;
  double contentPaddingHorizontal;
  double contentPaddingVertical;
  double radius;
  Color? fillColor;
  Color enabledBorderColor;
  Color focusBorderColor;
  Color errorBorderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: textFormFieldColor,
          borderRadius: BorderRadius.circular(radius),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(.16),
                blurRadius: 12,
                offset: const Offset(0, 6))
          ]),
      child: TextFormField(
        autofocus: autoFocus!,
        focusNode: focusNode,
        onChanged: onChange,
        validator: validator,
        controller: controller,
        keyboardType: keyboardType,
        onFieldSubmitted: onFieldSubmitted,
        onTap: onTap,
        enabled: isEnabled,
        style: const TextStyle(
            color: blackColor, fontSize: 16, fontWeight: FontWeight.w300),
        readOnly: readOnly,
        decoration: InputDecoration(
            fillColor: fillColor,
            hintText: hint,
            contentPadding: EdgeInsets.symmetric(
                horizontal: contentPaddingHorizontal,
                vertical: contentPaddingVertical),
            // helperStyle: TextStyle(height: .2),
            // helperText: "",
            prefixIcon: prefix,
            suffixIcon: suffix,
            //errorStyle: TextStyle(height: .5),
            // errorBorder: OutlineInputBorder(
            //     borderRadius: BorderRadius.circular(15),
            //     borderSide: BorderSide(
            //       color: greyTextColorithOpacity(.2),
            //     )
            // ),
            label: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: TextWidget(
                text: label,
                fontColor: blackColor,
                fontSize: 16.sp,
                fontWeight: FontWeight.w300,
              ),
            ),
            border: const OutlineInputBorder(),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(radius),
                borderSide: BorderSide(
                  color: enabledBorderColor,
                )),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(radius),
                borderSide: BorderSide(color: focusBorderColor)),
            disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(radius),
                borderSide: BorderSide(color: enabledBorderColor)),
            focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(radius),
                borderSide: BorderSide(color: errorBorderColor)),
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(radius),
                borderSide: BorderSide(color: errorBorderColor))),
      ),
    );
  }
}
