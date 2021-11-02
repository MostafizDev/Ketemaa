import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:ketemaa/core/language/language_string.dart';
import 'package:ketemaa/core/utilities/app_colors/app_colors.dart';
import 'package:ketemaa/core/utilities/app_dimension/app_dimenson.dart';
import 'package:ketemaa/core/utilities/app_spaces/app_spaces.dart';
import 'package:ketemaa/core/utilities/common_widgets/password_input_field.dart';
import 'package:ketemaa/core/utilities/common_widgets/text_input_field.dart';

class SignInWithEmail extends StatefulWidget {
  const SignInWithEmail({Key? key}) : super(key: key);

  @override
  _SignInWithEmailState createState() => _SignInWithEmailState();
}

class _SignInWithEmailState extends State<SignInWithEmail> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: AppColors.black,
          ),
          onPressed: () {
            Get.back();
          },
        ),
        backgroundColor: AppColors.white,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              AppSpaces.spaces_height_100,
              Text(
                LanguageString.LOGIN_IN_WITH.tr,
                style: Get.textTheme.headline4!.copyWith(color: Colors.black),
              ),
              AppSpaces.spaces_height_30,
              TextInputField(
                labelText: LanguageString.EMAIL.tr,
                height: .09,
                textType: TextInputType.emailAddress,
                controller: emailController,
              ),
              AppSpaces.spaces_height_5,
              PasswordInputField(
                  labelText: LanguageString.PASSWORD.tr,
                  height: .09,
                  textType: TextInputType.text,
                  controller: passwordController),
              AppSpaces.spaces_height_5,
              Container(
                margin: EdgeInsets.all(AppDimension.b1),
                //padding: EdgeInsets.all(AppDimension.b1),
                height: Get.height * .09,
                width: Get.width,
                decoration: BoxDecoration(
                  color: AppColors.textColor, // set border width
                  borderRadius: BorderRadius.all(
                      Radius.circular(10.0)), // set rounded corner radius
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    LanguageString.lOG_IN.tr.toUpperCase(),
                    style: Get.textTheme.button,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
