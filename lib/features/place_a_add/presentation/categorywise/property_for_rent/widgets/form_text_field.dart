import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ketemaa/core/language/language_string.dart';
import 'package:ketemaa/core/utilities/app_colors/app_colors.dart';
import 'package:ketemaa/core/utilities/app_dimension/app_dimension.dart';
import 'package:ketemaa/features/place_a_add/_controller/place_a_add_controller.dart';

class PropertyTextInputField extends StatefulWidget {
  String labelText;
  TextInputType textType;
  TextEditingController controller;
  bool? optionalText;

  PropertyTextInputField({
    required this.labelText,
    required this.textType,
    required this.controller,
    this.optionalText,
  });

  @override
  _PropertyTextInputFieldState createState() => _PropertyTextInputFieldState();
}

class _PropertyTextInputFieldState extends State<PropertyTextInputField> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Get.put(PlaceAddController());
    printInfo(info: widget.optionalText.toString());
    return Container(
      height: Get.height * .09,
      padding: EdgeInsets.all(AppDimension.b1),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: AppColors.grey, width: 1.5),
        borderRadius: BorderRadius.all(
            Radius.circular(AppDimension.propertyRentTitleRadius)),
      ),
      child: TextField(
        key: _formKey,
        controller: widget.controller,
        decoration: InputDecoration(
          hintText: widget.labelText,
          counterStyle: TextStyle(
            overflow: TextOverflow.ellipsis,
          ),
          border: InputBorder.none,
          suffixText: widget.optionalText == true ? AppLanguageString.OPTIONAL : '',
        ),
        keyboardType: widget.textType,
      ),
    );
  }
}
