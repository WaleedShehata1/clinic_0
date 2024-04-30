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
      const SizedBox(
        height: 5,
      ),
      Text(
        widget.title,
        style:  TextStyle(
            color: AppColors.primaryColor,
            fontSize: 19.sp,
            fontWeight: FontWeight.w600),
      ),
       SizedBox(
        height:5.h,
      ),
      TextFormField(
          validator: (value) {
            if (value!.isEmpty) {
              return errorMessage(widget.title);
            }
            if (widget.title !=  "password".tr && widget.title !=  "repassword".tr && value.length > 25 ) {
              return "invalidName".tr;
            } 
            
            if (widget.title ==  "nationalId".tr && value.length != 14 ) {
              return "invalidNationalId".tr;
            }            
            return null;
          },
          keyboardType: widget.isNum
              ? const TextInputType.numberWithOptions()
              : TextInputType.text,
          onSaved: widget.onClick,
          cursorColor: AppColors.primaryColor,
          style: TextStyle(color: AppColors.primaryColor, fontSize: 18.sp),
          controller: widget.controller,
          decoration: InputDecoration(
              hintStyle: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 14.sp,
                  color: AppColors.hintColor),
              hintText: widget.hint,
              isDense: true,
              contentPadding: EdgeInsets.all(5.w),
              fillColor: AppColors.bgColor,
              filled: true,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0.r),
                borderSide: const BorderSide(
                  color: AppColors.primaryColor,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0.r),
                borderSide: BorderSide(
                  color: AppColors.primaryColor,
                  width: 2.w,
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0.r),
                borderSide: BorderSide(
                  color: AppColors.primaryColor,
                  width: 2.w,
                ),
              ))),
      SizedBox(
>>>>>>> a10604028f7a14db966cae5ade8592fb73dd560e
        height: 5.h,
      ),
    ]);
  }
}
