import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '_controller/sign_in_controller.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(SigninController());
    SigninController.to.signIn();
    return Scaffold(
      body: Column(
        children: [
          Obx(
                () => Text(SigninController.to.response_value.value),
          ),
        ],
      ),
    );
  }
}
