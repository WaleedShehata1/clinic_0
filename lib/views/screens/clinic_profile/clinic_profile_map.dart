import 'package:clinic/core/consts/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/consts/images.dart';


class ClinicProfileMap extends StatelessWidget {
  const ClinicProfileMap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(alignment: Alignment.topCenter, children: [
        Container(
          padding: const EdgeInsetsDirectional.only(top: 20),
          color: AppColors.primaryColor,
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.15,
              ),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadiusDirectional.only(
                      topEnd: Radius.circular(250),
                      topStart: Radius.circular(350),
                    ),
                  ),
                  padding: const EdgeInsetsDirectional.symmetric(
                      horizontal: 25, vertical: 50),
                  child: Column(

                    children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Text(
                      "Youssef maged",
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w800,
                      ),
                    ),Text(
                          " . ",
                          style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w900,
                          ),
                        ),Text(
                          "Dr",
                          style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w900,
                          ),
                        ),],)  ,
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "30 كيلومتر",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: AppColors.primaryColor,
                            ),
                          ),
                          Icon(
                            Icons.location_on_outlined,
                            color: AppColors.primaryColor,
                          ),
                        ],
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("4.0",style: TextStyle(color:AppColors.fontGrey,fontSize: 22,fontWeight: FontWeight.bold ,),),
                         SizedBox(width: 5,),
                          Icon(
                            Icons.star_border,
                            color: Colors.red,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.red,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.red,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.red,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.red,
                          ),
                        ],
                      )  ,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                           Container(
                             margin: EdgeInsetsDirectional.symmetric(horizontal: 15.w, vertical:10.h),
                            decoration: BoxDecoration(
                              border: Border.all(color: AppColors.primaryColor,width: 2.w),
                              borderRadius:BorderRadius.circular( 25.r),
                            ),
                            child: IconButton(onPressed: (){},icon: Icon(Icons.mode_comment_outlined,color: AppColors.primaryColor,),),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: AppColors.primaryColor,width: 2.w),
                              borderRadius:BorderRadius.circular( 25.r),
                            ),
                            child: IconButton(onPressed: (){},icon: Icon(Icons.videocam_outlined,color: AppColors.primaryColor,),),
                          )
                          ,
                        ],),
                      Container(
                        margin:  EdgeInsetsDirectional.only(top: 5.h),
                        padding: const EdgeInsetsDirectional.all(10),
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadiusDirectional.only(
                                topStart: Radius.circular(15),
                                topEnd: Radius.circular(15)),
                            color: Colors.white,
                            border: Border.all(color: Colors.grey, width: 1)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Text(
                              "أرقام التليفونات",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            const Expanded(child: SizedBox()),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.phone,
                                  color: AppColors.primaryColor,
                                ))
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsetsDirectional.all(10),
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadiusDirectional.only(
                                bottomEnd: Radius.circular(15),
                                bottomStart: Radius.circular(15)),
                            color: Colors.white,
                            border: Border.all(color: Colors.grey, width: 1)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Text(
                              "01507623823",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.phone,
                                  color: AppColors.primaryColor,
                                ))
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: const EdgeInsetsDirectional.all(10),
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadiusDirectional.only(
                                topStart: Radius.circular(15),
                                topEnd: Radius.circular(15)),
                            color: Colors.white,
                            border: Border.all(color: Colors.grey, width: 1)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Text(
                              "25 ش ابن السراج متفرع من وينجت",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.phone,
                                  color: AppColors.primaryColor,
                                ))
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsetsDirectional.all(10),
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadiusDirectional.only(
                                bottomEnd: Radius.circular(15),
                                bottomStart: Radius.circular(15)),
                            color: Colors.white,
                            border: Border.all(color: Colors.grey, width: 1)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Text(
                              "من 10 ص الي 12 م",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.phone,
                                  color: AppColors.primaryColor,
                                ))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Transform.translate(
          offset: const Offset(-190, -150),
          child: Container(
            width: 350.w,
            height: 300.h,
            decoration: BoxDecoration(
                color: const Color(0xffFFFFFF).withOpacity(0.2),
                borderRadius: const BorderRadius.all(Radius.circular(300))),
          ),
        ),
        Transform.translate(
          offset: const Offset(0, 80),
          child: Container(
            width: 120,
            height: 100,
            alignment: Alignment.topCenter,
            margin: const EdgeInsetsDirectional.only(bottom: 10),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
            child: Image.asset(
              ImagesPath.person,
              width: 200.w,
              height: 200.h,
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
      ]),
    );
  }
}
