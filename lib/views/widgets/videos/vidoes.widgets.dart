import 'package:clinic/core/consts/consts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class VideosWidget extends StatefulWidget {
  final String image;
  final String title;
  final String view;
  final String date;
  final String time;
  final bool? showPlayIcon;
  final Function()? onPress;
  const VideosWidget({
    super.key,
    required this.image,
    required this.title,
    required this.view,
    required this.date,
    required this.time,
    required this.onPress,
    this.showPlayIcon,
  });

  @override
  State<VideosWidget> createState() => _VideosWidgetState();
}

class _VideosWidgetState extends State<VideosWidget> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPress,
      child: Stack(
        children: [
          Container(
            //height:120.h,
            padding: const EdgeInsets.all(8.8),
            margin: const EdgeInsets.symmetric(vertical: 0.1),
            child: Row(
              //  mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Stack(
                    alignment: AlignmentDirectional.bottomStart,
                    children: [
                      InkWell(
                        onTap: widget.onPress,
                        child: Container(
                          height: 100.h,
                          constraints: BoxConstraints(minHeight: 100.h),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              widget.image,
                              width: double.maxFinite,
                              height: 100.h,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(
                                bottom: 10, right: 10, left: 10),
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                color: AppColors.primaryColor),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Row(
                                children: [
                                  Text(
                                    widget.time,
                                    // textDirection:TextDirection.rtl ,
                                    style: TextStyle(
                                        color: AppColors.whiteColor,
                                        fontSize: 12.sp),
                                  ),
                                  widget.showPlayIcon != null
                                      ? Row(
                                          children: [
                                            Image.asset(
                                              ImagesPath.icPlay,
                                              // width: 20.w,
                                              // height: 20.h,
                                              fit: BoxFit.fill,
                                            ),
                                            SizedBox(
                                              width: 5.w,
                                            ),
                                          ],
                                        )
                                      : const SizedBox(),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Expanded(
                  flex: 1,
                  child: SizedBox(
                    width: (context.screenWidth - 20) / 2,
                    child: Column(
                      //  mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                            //    mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 120.w,
                                //  height: 80.h,
                                // color: Colors.amber,
                                constraints: BoxConstraints(minHeight: 60.h),
                                child: Text(
                                  widget.title,
                                  maxLines: 2,
                                  // textDirection: TextDirection.rtl,
                                  //textAlign: TextAlign.right,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16.sp,
                                      color: AppColors.blackColor),
                                ),
                              ),
                              SizedBox(
                                width: 5.w,
                              ),

                            ]),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                          padding: const EdgeInsets.only(right: 5.5),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                '${widget.view} ${'seen'.tr}',
                                style: TextStyle(
                                    //  fontWeight: FontWeight.w400,
                                    fontSize: Get.locale!.languageCode == "ar"
                                        ? 12.sp
                                        : 10.sp,
                                    color: AppColors.blackColor),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                '${'from'.tr} ${widget.date} ',
                                style: TextStyle(
                                    //fontWeight: FontWeight.w400,
                                    fontSize: Get.locale!.languageCode == "ar"
                                        ? 12.sp
                                        : 10.sp,
                                    color: AppColors.blackColor),
                              ),
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
          Positioned(
            top: 15,
            left: 20,
            child: GestureDetector(onTap: (){
              setState(() {
                isFavorite = !isFavorite;
              });
            }, child: Image.asset(isFavorite ? ImagesPath.icShare : ImagesPath.bookmark,width: 15.w,height: 15.h,color: Colors.blue,),),
          ),


        ],
      ),
    );
  }
}
