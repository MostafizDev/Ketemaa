import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slider/carousel.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:ketemaa/app_routes/app_routes.dart';
import 'package:ketemaa/core/utilities/app_assets/app_assets.dart';
import 'package:ketemaa/core/utilities/app_colors/app_colors.dart';
import 'package:ketemaa/core/utilities/app_spaces/app_spaces.dart';
import 'package:ketemaa/core/utilities/common_widgets/image_slider.dart';
import 'package:ketemaa/core/utilities/common_widgets/social_login_button.dart';

class MainAuth extends StatefulWidget {
  const MainAuth({Key? key}) : super(key: key);

  @override
  _MainAuthState createState() => _MainAuthState();
}

class _MainAuthState extends State<MainAuth> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: ListView(
          children: [
            AppSpaces.spaces_height_15,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(null),
                ),
                Text(
                  'App_Name'.tr,
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: AppColors.black),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.cancel_outlined),
                ),
              ],
            ),
            AppSpaces.spaces_height_15,
            ImageSliderSection(
              images: [
                AppAsset.main_auth_image_1,
                AppAsset.main_auth_image_2,
                AppAsset.main_auth_image_3,
              ],
            ),
            AppSpaces.spaces_height_25,
            SocialLoginButton(
                image: AppAsset.google_icon, text: 'Google_Login'.tr),
            AppSpaces.spaces_height_15,
            SocialLoginButton(
                image: AppAsset.facebook_icon, text: 'Facebook_Login'.tr),
            AppSpaces.spaces_height_15,
            SocialLoginButton(
                image: AppAsset.apple_icon, text: 'Apple_Login'.tr),
            AppSpaces.spaces_height_15,
            SocialLoginButton(
                image: AppAsset.email_icon, text: 'Email_Login'.tr),
            AppSpaces.spaces_height_30,
            Center(
              child: InkWell(
                onTap: () {
                  Get.toNamed(AppRoutes.SIGN_UP);
                },
                child: Text(
                  'Create_Account'.tr,
                  style: TextStyle(
                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ),
            ),
            AppSpaces.spaces_height_35,
            Center(
              child: Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Accept_TnC'.tr,
                          style: TextStyle(color: AppColors.black)),
                      TextSpan(
                          text: 'Terms_Condition'.tr,
                          style: TextStyle(
                            color: AppColors.primaryColor,
                            decoration: TextDecoration.underline,
                          )),
                      TextSpan(text: ' and '),
                      TextSpan(
                          text: 'Privacy_Policy'.tr,
                          style: TextStyle(
                            color: AppColors.primaryColor,
                            decoration: TextDecoration.underline,
                          ))
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            AppSpaces.spaces_height_25,
          ],
        ),
      ),
    );
  }
}
