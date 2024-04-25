import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/consts/images.dart';
import 'constant.dart';

Container cardItem() {
  return Container(
    margin: EdgeInsetsDirectional.symmetric(horizontal: 10.w),
    padding: const EdgeInsets.all(10).w,
    decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: primerColor,
        ),
        borderRadius: BorderRadius.circular(20).r),
    child: Stack(children: [
      Column(children: [
        Image.asset(
          ImagesPath.imageItem,
          width: 98.w,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding: EdgeInsetsDirectional.all(15.w),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20).r,
                  color: const Color(0xffF4F4F4),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        offset: const Offset(0, 2),
                        spreadRadius: 0,
                        blurRadius: 2.r)
                  ]),
              child: InkWell(
                onTap: () {},
                child: Image.asset(
                  ImagesPath.imageShopCar,
                  width: 22.w,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Muli vitamins",
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: primerColor),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(start: 10.w, end: 20.w),
                  child: Text(
                    "Price after discount: 250 EGP".tr,
                    style: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.red),
                  ),
                ),
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Text(
                      "Before discount: 280 EGP".tr,
                      style: TextStyle(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w700,
                          color: Colors.red),
                    ),
                    Container(
                      width: 100.w,
                      height: 1.h,
                      color: Colors.black,
                    )
                  ],
                ),
              ],
            ),
          ],
        )
      ]),
      const Icon(
        Icons.favorite,
        color: Colors.red,
      )
    ]),
  );
}
