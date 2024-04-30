import 'package:flutter/cupertino.dart';
import 'package:clinic/core/consts/consts.dart';
import 'package:get/get.dart';
import 'package:overlay_kit/overlay_kit.dart';

abstract class SearchController extends GetxController {
  checkPhone();
  goToVerfiyCode();
}

class SearchControllerImp extends SearchController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController search;

  @override
  checkPhone() {
    OverlayLoadingProgress.stop();
    var formdata = formstate.currentState;
    if (formdata!.validate()) {

      print("Valid");
      goToVerfiyCode();
      OverlayLoadingProgress.stop();
    } else {
      print("Not Valid");
      OverlayLoadingProgress.stop();
    }
  }

  @override
  goToVerfiyCode() {
    Get.offNamed(AppRoutes.verfiyCodeScreen);
  }

  @override
  void onInit() {
    search = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    search.dispose();
    super.dispose();
  }
}
