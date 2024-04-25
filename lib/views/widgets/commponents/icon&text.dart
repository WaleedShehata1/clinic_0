// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget iconText({
  required double margin,
  required String text,
  required String image,
}) {
  return Container(
    padding:  EdgeInsets.all(10.w),
    margin: EdgeInsetsDirectional.only(top: margin, start: 5.w, end: 15.w),
    decoration: BoxDecoration(
        color: const Color(0xffF4F4F4),
        borderRadius: BorderRadius.circular(12).r),
    child: Row(children: [
      Image.asset(
        image,
        width: 45.w,
      ),
       SizedBox(
        width: 10.w,
      ),
      Text(
        text,
        style:  TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
      ),
    ]),
  );
}
