import 'package:clinic/controller/search/search.controller.dart';
import 'package:clinic/core/consts/consts.dart';
import 'package:clinic/views/widgets/custom_textfield.widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget {
  final Color? bgColor;
  final IconData? leadingIcon;
  final IconData? actionIcon;
  final String? title;
  final Function()? onPressLeading;
  final Function()? onPressAction;
  const CustomAppBar(
      {super.key,
      this.bgColor,
      this.leadingIcon,
      this.actionIcon,
      this.title,
      this.onPressLeading,
      this.onPressAction});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      flexibleSpace: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.,
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(left: 7.0),
                  child: IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: AppColors.whiteColor,
                    ),
                  ),
                ),
              ),
GetBuilder<SearchControllerImp>(builder: (controller) {
                  return Form(
                    child: Expanded(
                      flex: 5,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 7.0, right: 10),
                        child: CustomTextField(
                          title: AppText.search,
                          hint: AppText.searchHint,
                          controller: controller.search,
                          icon: Icons.email,
                          isPass: false,
                          onClick: (value) {
                            //  authController.emailController!.text =
                            value!;
                          },
                          isNum: false,
                        ),
                      ),
                    ),
                  );
                }
              ),
            ],
          ),
        ),
      ),
      leading: const SizedBox(),
      backgroundColor: AppColors.appBg,
    );
  }
}
