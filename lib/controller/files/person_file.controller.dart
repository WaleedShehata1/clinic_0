// ignore_for_file: unused_local_variable

import 'package:flutter/cupertino.dart';
import 'package:clinic/core/classes/status_request.dart';
import 'package:clinic/core/consts/consts.dart';
import 'package:get/get.dart';
import 'package:overlay_kit/overlay_kit.dart';

abstract class PersonFileController extends GetxController {
  personFile();
  goToHomePage();
  goToPersonFile();
  goToPersonFile2();
  uploadFiles();
  next();
  onPageChanged(int index);
}

class PersonFileControllerImp extends PersonFileController {
  // GlobalKey<FormState> formstate = GlobalKey<FormState>();

  final GlobalKey<FormState>? tabOne = GlobalKey();
  final GlobalKey<FormState>? tabTwo = GlobalKey();
  late TextEditingController fullname;
  late TextEditingController bloodcat;
  late TextEditingController height;
  late TextEditingController weight;
  late TextEditingController age;
  late TextEditingController gender;

  late TextEditingController pressure;
  late TextEditingController sugar;
  late TextEditingController email;
  late TextEditingController emergencyte1;
  late TextEditingController emergencyte2;
  late PageController pageController;

  int currentPage = 0;
  // SignupData signupData = SignupData(Get.find());

  List data = [];
  List tabs = [1, 2];

  late StatusRequest statusRequest;
  @override
  personFile() async {
    OverlayLoadingProgress.start();
    // var formdata = formstate.currentState;
//var formdata = tabOne.currentState;
    var formdata = tabTwo?.currentState;

    if (formdata!.validate()) {
      // Get.offNamed(AppRoutes.verfiyCodeSignUpScreen);
      // Get.delete<SignUpControllerImp>();
      statusRequest = StatusRequest.loading;
      var response = "";
      //   await signupData.postData(username.text, password.text, email.text);
      // print("=============================== Controller $response ");
      // statusRequest = HandlingData.handlingData(response);
      if (StatusRequest.success == statusRequest) {
        //  data.addAll(response['data']);
        // Get.offNamed(AppRoutes.verfiyCodeSignUpScreen);
        OverlayLoadingProgress.stop();
        Get.toNamed(AppRoutes.homepageScreen);
      } else {
        Get.toNamed(AppRoutes.homepageScreen);
        // Get.defaultDialog(
        //     title: "ُWarning",
        //     middleText: "Phone Number Or Email Already Exists");
        // statusRequest = StatusRequest.failure;
        OverlayLoadingProgress.stop();
      }
      update();
      OverlayLoadingProgress.stop();
    } else {
      print("Not Valid");
      OverlayLoadingProgress.stop();
    }
  }

  @override
  goToHomePage() {
    Get.toNamed(AppRoutes.homepageScreen);
  }

  @override
  goToPersonFile() {
    Get.toNamed(AppRoutes.personFile);
  }

  @override
  goToPersonFile2() {
    Get.toNamed(AppRoutes.personFile2);
  }

  @override
  void onInit() {
    pageController = PageController();

    fullname = TextEditingController();
    height = TextEditingController();
    weight = TextEditingController();
    age = TextEditingController();
    gender = TextEditingController();

    pressure = TextEditingController();
    sugar = TextEditingController();
    emergencyte1 = TextEditingController();
    emergencyte2 = TextEditingController();
    super.onInit();
  }

  @override
  uploadFiles() {
    OverlayLoadingProgress.start();
    // TODO: implement uploadFiles
    throw UnimplementedError();
  }

  @override
  next() {
    currentPage++;
    pageController.animateToPage(currentPage,
        duration: const Duration(milliseconds: 900), curve: Curves.easeInOut);

    // if (currentPage > tabs.length-1) {
    //    Get.toNamed(AppRoutes.homepageScreen) ;
    // } else {
    //   pageController.animateToPage(currentPage,
    //       duration: const Duration(milliseconds: 900), curve: Curves.easeInOut);
    // }
  }

  @override
  onPageChanged(int index) {
    currentPage = index;
    update();
  }

  // @override
  // next() {
  //   currentPage++;

  //     // var formdata = tabOne?.currentState!;
  //     // var formdata2 = tabTwo?.currentState;

  //     // if (formdata!.validate()) {
  //     //   pageController.animateToPage(currentPage,
  //     //       duration: const Duration(milliseconds: 900),
  //     //       curve: Curves.easeInOut);
  //     // }else if (formdata2!.validate()) {
  //     //   pageController.animateToPage(currentPage,
  //     //       duration: const Duration(milliseconds: 900),
  //     //       curve: Curves.easeInOut);
  //     // }

  //      if (currentPage > 1) {
  //      Get.to(AppRoutes.homepageScreen) ;
  //   } else {
  //     pageController.animateToPage(currentPage,
  //         duration: const Duration(milliseconds: 900), curve: Curves.easeInOut);
  //   }

  // }

  // @override
  // onPageChanged(int index) {
  // //    var formdata = tabOne?.currentState;
  // //    var formdata2 = tabTwo?.currentState;

  // //     if (formdata!.validate()) {
  // //  currentPage = index;
  // //   update();
  // //     }else  if (formdata2!.validate()) {
  // //  currentPage = index;
  // //   update();
  // //     }

  //        currentPage = index;

  // }

  // @override
  // void dispose() {
  //   //  email.dispose();
  //   fullname.dispose();
  //   height.dispose();
  //   weight.dispose();
  //   age.dispose();
  //   gender.dispose();
  //   pressure.dispose();
  //   sugar.dispose();
  //   emergencyte1.dispose();
  //   emergencyte2.dispose();
  //   super.dispose();
  // }
}
