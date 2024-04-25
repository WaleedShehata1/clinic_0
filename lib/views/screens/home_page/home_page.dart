// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/consts/images.dart';
import '../../widgets/commponents/icon&text.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView(children: [
         SizedBox(height: 10.h,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              margin:  EdgeInsetsDirectional.only(
                start: 10.w,
                end: 15.w,
              ),
              padding: const EdgeInsetsDirectional.all(10),
              decoration: BoxDecoration(
                  color: const Color(0xffFF0000),
                  borderRadius: BorderRadius.circular(12)),
              child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "subscription".tr,
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w900),
                    ),
                    Text(
                      "You must register to enjoy our services".tr,
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w200),
                    ),
                  ]),
            ),
            SizedBox(
              child: iconText(
                margin: 30,
                text: 'Book an appointment with your specialist doctor'.tr,
                image: ImagesPath.home1,
              ),
            ),
            iconText(
              margin: 15,
              text: "Book a call with your specialist doctor".tr,
              image: ImagesPath.home2,
            ),
            iconText(
              margin: 15,
              text: "Book a home visit".tr,
              image: ImagesPath.home3,
            ),
            iconText(
              margin: 15,
              text: "Book an x-ray at your home".tr,
              image: ImagesPath.home4,
            ),
            Container(
              width: double.infinity,
              height: 2.h,
              color: const Color(0xffD9D9D9),
              margin: EdgeInsetsDirectional.only(
                top: 25.h,
              ),
            ),
             Padding(
              padding: EdgeInsetsDirectional.all(10.w),
              child: Text(
                "Articles".tr,
                style:  TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                  fontSize: 18.sp,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 118.h,
              margin:  EdgeInsets.all(10.w),
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15).r,
              ),
              child: InkWell(
                onTap: () {},
                child: Image.asset(
                  ImagesPath.home5,
                  width: 10.w,
                ),
              ),
            ),
          ],
        )
      ]),
    );
  }
}
