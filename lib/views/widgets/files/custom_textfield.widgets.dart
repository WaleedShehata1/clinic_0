// ignore_for_file: must_be_immutable

import 'package:clinic/core/consts/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../commponents/text_Form_Field.dart';

class CustomTextFieldFile extends StatefulWidget {
  final String hint;
  final String title;
  final double? height;
  final double? radius;
  final TextEditingController controller;
  final Function(String?)? onClick;
  bool isNum;

  CustomTextFieldFile({
    super.key,
    this.height,
    this.radius,
    required this.title,
    required this.hint,
    required this.controller,
    this.onClick,
    required this.isNum,
  });

  @override
  State<CustomTextFieldFile> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextFieldFile> {
  String? errorMessage(String str) {
    if (widget.title == "nationalId".tr) {
      return "requiredNationalId".tr;
    } else if (widget.title == "fullname".tr) {
      return "nameRequired".tr;
    } else if (widget.title == "age".tr) {
      return "ageRequired".tr;
    } else if (widget.title == "height".tr) {
      return "heightRequired".tr;
    } else if (widget.title == "weight".tr) {
      return "weightRequired".tr;
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        widget.title,
        style: TextStyle(
            color: AppColors.primaryColor,
            fontSize: 19.sp,
            fontWeight: FontWeight.w600),
      ),
      SizedBox(
        height: 5.h,
      ),
      SizedBox(
        height: widget.height,
        child: DefaultFormField(
          validator: (value) {
            if (value!.isEmpty) {
              return errorMessage(widget.title);
            }
            if (widget.title != "password".tr &&
                widget.title != "repassword".tr &&
                value.length > 25) {
              return "invalidName".tr;
            }

            if (widget.title == "nationalId".tr && value.length != 14) {
              return "invalidNationalId".tr;
            }
            return null;
          },
          radius: widget.radius,
          hint: widget.hint,
          keyboardType: widget.isNum
              ? const TextInputType.numberWithOptions()
              : TextInputType.text,
          onSaved: widget.onClick,
          fontSize: 18.sp,
          textColor: AppColors.primaryColor,
          controller: widget.controller,
          fillColor: AppColors.whiteColor,
        ),
      ),
      SizedBox(
        height: 5.h,
      ),
    ]);
  }
}
