import 'package:clinic/core/consts/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'constant.dart';

Widget cardNotification() {
  return Container(
    padding: EdgeInsetsDirectional.all(10.w),
    margin: EdgeInsetsDirectional.all(10.w),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25).r,
        border: Border.all(color: primerColor, width: 2.w)),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              alignment: Alignment.center,
              margin: EdgeInsetsDirectional.only(bottom: 10.h),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(25).r),
              child: Image.asset(
                ImagesPath.notificationAvatar,
                width: 45.w,
              ),
            ),
            Text(
              "Al-Masry Pharmacy".tr,
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w900,
                color: primerColor,
              ),
            ),
            Row(
              children: [
                Container(
                  width: 10.w,
                  height: 10.h,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(25).r,
                  ),
                ),
                Container(
                  width: 10.w,
                  height: 10.h,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(25).r,
                  ),
                ),
                Container(
                  width: 10.w,
                  height: 10.h,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(25).r,
                  ),
                ),
              ],
            )
          ],
        ),
        Text(
          "Availability of Cavoside (anti-cough) at the pharmacy".tr,
          style: TextStyle(
            fontSize: 15.sp,
            fontWeight: FontWeight.w700,
          ),
        )
      ],
    ),
  );
}
