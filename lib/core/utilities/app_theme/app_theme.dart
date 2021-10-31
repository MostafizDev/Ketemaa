import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ketemaa/core/utilities/app_colors/app_colors.dart';
import 'package:ketemaa/core/utilities/app_dimension/app_dimenson.dart';

class AppTheme {
  static ThemeData themeData() {
    return ThemeData(
      backgroundColor: AppColors.backgroundColor,
      errorColor: AppColors.error_color,
      dividerColor: AppColors.borderColor,
      hintColor: AppColors.hintColor,
      textTheme: TextTheme(
        bodyText1: GoogleFonts.ubuntu(
            textStyle: TextStyle(
                fontSize: AppDimenson.b1,
                color: AppColors.textColor,
                letterSpacing: 0.3,
                wordSpacing: 0.5)),
        bodyText2: GoogleFonts.ubuntu(
            textStyle: TextStyle(
                fontSize: AppDimenson.b2,
                color: AppColors.textColor,
                letterSpacing: 0.3,
                wordSpacing: 0.5)),
        headline1: GoogleFonts.ubuntu(
            textStyle: TextStyle(
                fontSize: AppDimenson.h1,
                color: AppColors.textColor,
                letterSpacing: 0.3,
                wordSpacing: 0.5)),
        headline2: GoogleFonts.ubuntu(
            textStyle:
                TextStyle(fontSize: AppDimenson.h2, color: AppColors.textColor),
            letterSpacing: 0.3,
            wordSpacing: 0.5),
        headline3: GoogleFonts.ubuntu(
            textStyle:
                TextStyle(fontSize: AppDimenson.h3, color: AppColors.textColor),
            letterSpacing: 0.3,
            wordSpacing: 0.5),
        headline4: GoogleFonts.ubuntu(
            textStyle:
                TextStyle(fontSize: AppDimenson.h4, color: AppColors.textColor),
            letterSpacing: 0.3,
            wordSpacing: 0.5),
      ),
    );
  }
}
