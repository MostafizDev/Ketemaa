import 'package:get/get.dart';

class AppSnackBar {



  static showErrorMessage({String title = "", String body = "" }) {
    Get.showSnackbar(GetBar(
      title: title,
      message: body,
    ));
  }

  static showSuccessMessage({String title = "", String body = "" }) {
    Get.showSnackbar(GetBar(
      duration: 1000.milliseconds,
      title: title,
      message: body,
    ));
  }



}