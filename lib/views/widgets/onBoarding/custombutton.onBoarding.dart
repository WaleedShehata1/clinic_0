import 'package:clinic/controller/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:clinic/core/consts/consts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomButtonOnBoarding extends GetView<OnBoardingControllerImp> {
  final int index;
  const CustomButtonOnBoarding({super.key,required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30.h),
      width: 200.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 2, color: AppColors.primaryColor)),
      child: MaterialButton(
<<<<<<< HEAD
          padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height < 500 ? 5.h : 10.h),
=======
          padding: EdgeInsets.symmetric(vertical: 5.h),
>>>>>>> a10604028f7a14db966cae5ade8592fb73dd560e
          textColor: AppColors.secondryColor,
          onPressed: () {
            controller.next();
          },
          // color: AppColors.whiteColor,
          child: Text(
<<<<<<< HEAD
            index == 4
                ? "start".tr
                : "next".tr,
            style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
=======
            index == 4 ? "start".tr : "next".tr,
            style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w800),
>>>>>>> a10604028f7a14db966cae5ade8592fb73dd560e
          )),
    );
  }
}

