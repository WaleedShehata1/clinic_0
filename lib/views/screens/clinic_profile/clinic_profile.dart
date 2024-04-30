import 'package:clinic/core/consts/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class ClinicProfilePage2 extends StatelessWidget {
  const ClinicProfilePage2({super.key});

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return Stack(
      alignment:Get.locale!.languageCode == "ar"?  Alignment.topRight : Alignment.topLeft,
      children: [
        Scaffold(
          backgroundColor: AppColors.primaryColor,
          body: SafeArea(
            child: SingleChildScrollView(
           //   physics: const BouncingScrollPhysics(),
              child: Container(
                margin: const EdgeInsets.only(top: 25.0),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      // color: AppColors.cardBg,
                      //  height: MediaQuery.of(context).size.width < 450 ? 250.h : 300.h,
                      width: double.infinity,
                      margin: const EdgeInsets.only(top: 100),
                      decoration: const BoxDecoration(
                          color: AppColors.whiteColor,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(200),
                              topRight: Radius.circular(200))),
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 80.h,
                          ),
                          Text("Al-Masry Pharmacy".tr,
                              style: TextStyle(
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w700,
                              )),
                          SizedBox(
                            height: 5.h,
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("30 km".tr,
                                    style: TextStyle(
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.primaryColor)),
=======
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SingleChildScrollView(
        child: Stack(
            alignment: Get.locale!.languageCode == "ar"
                ? Alignment.topLeft
                : Alignment.topRight,
            children: [
              SizedBox(
                child: Container(
                  padding: EdgeInsetsDirectional.only(top: 40.h),
                  color: AppColors.primaryColor,
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadiusDirectional.only(
                              topEnd: const Radius.circular(250).r,
                              topStart: const Radius.circular(350).r,
                            ),
                            border: Border.all(color: Colors.white, width: 0)),
                        padding: EdgeInsetsDirectional.symmetric(
                            horizontal: 25.w, vertical: 50.h),
                        child: Column(
                          children: [
                            Text(
                              "صيدلية المصري",
                              style: TextStyle(
                                fontSize: 22.sp,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "30 كيلومتر",
                                  style: TextStyle(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.primaryColor,
                                  ),
                                ),
>>>>>>> a10604028f7a14db966cae5ade8592fb73dd560e
                                const Icon(
                                  Icons.location_on_outlined,
                                  color: AppColors.primaryColor,
                                ),
                              ]),
                          SizedBox(
                            height: 5.h,
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 5.h,
                              ),
                              ListTile(
                                trailing: Container(
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    border:
                                        Border.all(color: AppColors.borderLine),
                                    borderRadius: BorderRadius.circular(50),
                                    color: AppColors.whiteColor,
                                  ),
                                  child: const Icon(Icons.phone,
                                      color: AppColors.primaryColor),
                                ),
                                leading: Text("phones".tr,
                                    style: TextStyle(
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w600,
                                        color: AppColors.blackColor)),
                              ),
                              const Divider(
                                color: AppColors.borderLine,
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              ListTile(
                                trailing: Container(
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    border:
                                        Border.all(color: AppColors.borderLine),
                                    borderRadius: BorderRadius.circular(50),
                                    color: AppColors.whiteColor,
                                  ),
                                  child: const Icon(Icons.phone,
                                      color: AppColors.primaryColor),
                                ),
                                title: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text('0105555555',
                                      style: TextStyle(
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.w500,
                                          color: AppColors.blackColor)),
                                ),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                            ],
                          )
                              .box
                              .color(AppColors.whiteColor)
                              .roundedSM
                              .shadowSm
                              .margin(const EdgeInsets.all(12))
                              //  .padding(const EdgeInsets.symmetric(horizontal: 16))
                              .make(),
                          SizedBox(
                            height: 25.h,
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 5.h,
                              ),
                              ListTile(
                                trailing: Container(
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    border:
                                        Border.all(color: AppColors.borderLine),
                                    borderRadius: BorderRadius.circular(50),
                                    color: AppColors.whiteColor,
                                  ),
                                  child: const Icon(Icons.location_on_outlined,
                                      color: AppColors.primaryColor),
                                ),
                                title: Text("PharmacyAddress".tr,
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w600,
                                        color: AppColors.blackColor)),
                              ),
                              const Divider(
                                color: AppColors.borderLine,
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              ListTile(
                                trailing: Container(
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    border:
                                        Border.all(color: AppColors.borderLine),
                                    borderRadius: BorderRadius.circular(50),
                                    color: AppColors.whiteColor,
                                  ),
                                  child: const Icon(Icons.access_time_rounded,
                                      color: AppColors.primaryColor),
                                ),
                                title: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("PharmacyTime".tr,
                                      style: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w600,
                                          color: AppColors.blackColor)),
                                ),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                            ],
                          )
                              .box
                              .color(AppColors.whiteColor)
                              .roundedSM
                              .shadowSm
                              .margin(const EdgeInsets.all(12))
                              //  .padding(const EdgeInsets.symmetric(horizontal: 16))
                              .make(),
                          SizedBox(
                            height: 100.h,
                          ),
                        ],
                      ),
                    ),
                    Transform.translate(
                      offset: const Offset(0, 70),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(
                      ImagesPath.notificationAvatar,
                          // imageUrl: ImagesPath.clinicProfile,
                          // errorWidget: (context, url, error) =>
                          //     const Icon(Icons.error),
                          width: 80,
                          height: 80, 
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Transform.translate(
                offset: const Offset(-190, -150),
                child: Container(
                  width: 320.w,
                  height: 320.h,
                  decoration: BoxDecoration(
                      color: const Color(0xffFFFFFF).withOpacity(0.2),
                      borderRadius:
                          BorderRadius.all(const Radius.circular(300).r)),
                ),
              ),
<<<<<<< HEAD
         
          Padding(
            padding: const EdgeInsets.only(top:20.0,right: 20,left: 20),
            child: IconButton(
              onPressed: () {
                Get.toNamed(AppRoutes.homepageScreen);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: AppColors.whiteColor,
=======
              Align(
                alignment: Alignment.topCenter,
                child: Transform.translate(
                  offset: Offset(0, 60.h),
                  child: Container(
                    width: 100.w,
                    height: 90.h,
                    alignment: Alignment.topCenter,
                    margin: EdgeInsetsDirectional.only(bottom: 10.h),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25).r),
                    child: Image.asset(
                      ImagesPath.notificationAvatar,
                      width: 150.w,
                      height: 150.h,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
>>>>>>> a10604028f7a14db966cae5ade8592fb73dd560e
              ),
            ),
          ),
        // )
      ],
    );
  }
}
