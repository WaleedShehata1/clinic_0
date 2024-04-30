// 
import 'package:clinic/core/consts/consts.dart';
import 'package:clinic/views/widgets/commponents/card_item.dart';
import 'package:clinic/views/widgets/commponents/card_item_search.dart';
import 'package:clinic/views/widgets/commponents/dialog.dart';
import 'package:clinic/views/widgets/commponents/filtter.dart';
import 'package:clinic/views/widgets/commponents/text_Form_Field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';



class SearchWidget extends StatefulWidget {
  const SearchWidget({super.key});

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  TextEditingController search = TextEditingController();
  Widget? now;
  Widget stander = SizedBox(
    height: 270.h,
    child: ListView.builder(
      padding: EdgeInsetsDirectional.symmetric(horizontal: 10.w),
      scrollDirection: Axis.horizontal,
      reverse: true,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return CardItem();
      },
    ),
  );
  Widget stander2 = SizedBox(
    height: 620.h,
    width: 600.w,
    child: ListView.builder(
      padding: EdgeInsetsDirectional.symmetric(horizontal: 10.w),

      // shrinkWrap: true,
      itemBuilder: (context, index) {
        return const CardItemSearch();
      },
    ),
  );
  @override
  void initState() {
    now = stander;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: 50.h,
                    child: DefaultFormField(
                      controller: search,
                      onChanged: (v) {
                        setState(() {
                          if (search.text.isEmpty) {
                            now = stander;
                          } else if (search.text.trim().isEmpty) {
                            now = const SizedBox();
                          } else {
                            now = stander2;
                          }
                        });
                      },
                      fillColor: Colors.white,
                      radius: 20.r,
                      prefixIcon: Icon(
                        Icons.search,
                        color: AppColors.primaryColor,
                        size: 24.sp,
                      ),
                      hint: "Find the medicine".tr,
                    ),
                  ),
                 Padding(
          padding: const EdgeInsets.only(top: 20.0, right: 20, left: 20),
          child: IconButton(
            onPressed: () {
              Get.toNamed(AppRoutes.homepageScreen);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: AppColors.whiteColor,
            ),
          ),
        ),
      ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.symmetric(
                    horizontal: 15.w, vertical: 30.h),
                child: Text(
                  "Buy more medicines".tr,
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w900,
                    color: AppColors.primaryColor,
                  ),
                ),
              ),
              now!,
            ],
          ),
        ),
      ),
    );
  }
}
