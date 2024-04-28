import 'package:clinic/core/consts/consts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/commponents/chat_buble.dart';
import '../../widgets/commponents/text_Form_Field.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        SizedBox(
          height: 20.h,
        ),
        Row(
          children: [
            const Expanded(child: SizedBox()),
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_forward,
                ))
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.only(bottom: 10.h, end: 10.w),
              child: Text(
                "الدعم الفني",
                style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsetsDirectional.only(bottom: 10.h),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(25).r),
              child: Image.asset(
                ImagesPath.notificationAvatar,
                width: 50.w,
              ),
            ),
          ],
        ),

        Expanded(
          child: SingleChildScrollView(
            child: Column(
              verticalDirection: VerticalDirection.down,
              children: [
                Text(
                  "25 november,2023",
                  style: TextStyle(
                      fontSize: 15.sp,
                      color: Colors.red,
                      fontWeight: FontWeight.w900),
                ),
                chatBuble1(
                  start: 100,
                  end: 10,
                  color: AppColors.primaryColor,
                ),
                chatBuble1(
                  start: 10,
                  end: 100,
                  color: Colors.white,
                ),
                chatBuble1(
                  start: 100,
                  end: 10,
                  color: AppColors.primaryColor,
                ),
                Text(
                  "29 november,2023",
                  style: TextStyle(
                      fontSize: 15.sp,
                      color: Colors.red,
                      fontWeight: FontWeight.w700),
                ),
                chatBuble1(
                  start: 10,
                  end: 100,
                  color: Colors.white,
                ),
                chatBuble1(
                  start: 100,
                  end: 10,
                  color: AppColors.primaryColor,
                ),
                chatBuble1(
                  start: 10,
                  end: 100,
                  color: Colors.white,
                ),
                chatBuble1(
                  start: 100,
                  end: 10,
                  color: AppColors.primaryColor,
                ),
                chatBuble1(
                  start: 10,
                  end: 100,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10,right: 20,left: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(onTap: (){},child:Image.asset(
                "assets/images/FrameChat.png",
                width: 25,
              ) ,),
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: 50,
                  margin: const EdgeInsets.all(5),
                  child: DefaultFormField(

                    fillColor: AppColors.primaryColor,
                    colorFont: Colors.white,
                    radius: 10,
                    controller: TextEditingController(),
                    hint: "أكتب رسالتك",
                  ),
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
