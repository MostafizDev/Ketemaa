import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:ketemaa/features/splash_screen/splash_screen.dart';

class AppRoutes {
  static String INITAL_SCREEN = "/";

  static List<GetPage> AppRoutesList() {
    return [
      GetPage(name: INITAL_SCREEN, page: () => SplashScreen()),
    ];
  }
}
