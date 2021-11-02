import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:ketemaa/features/auth/presentation/main_auth/main_auth.dart';
import 'package:ketemaa/features/auth/presentation/sign_in/sign_in_email.dart';
import 'package:ketemaa/features/auth/presentation/sign_up/sign_up.dart';
import 'package:ketemaa/features/splash_screen/splash_screen.dart';

class AppRoutes {
  static String INITAL_SCREEN = "/";
  static String MAIN_AUTH = "/main_auth";
  static String SIGN_UP = "/sign_up";
  static String SIGN_IN_EMAIL = "/sign_in_email";

  static List<GetPage> AppRoutesList() {
    return [
      GetPage(name: INITAL_SCREEN, page: () => SplashScreen()),
      GetPage(name: MAIN_AUTH, page: () => MainAuth()),
      GetPage(name: SIGN_UP, page: () => SignUp()),
      GetPage(name: SIGN_IN_EMAIL, page: () => SignInWithEmail()),
    ];
  }
}
