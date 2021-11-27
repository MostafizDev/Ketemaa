import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/dynamic_extensions.dart';
import 'package:ketemaa/core/utilities/app_colors/app_colors.dart';

class ProptertyDropDownField extends StatefulWidget {
  String labelText;
  TextInputType textType;
  String? controll;
  List<String>? dropDownList;

  ProptertyDropDownField({
    required this.labelText,
    required this.textType,
    this.controll,
    this.dropDownList,
  });

  @override
  _ProptertyDropDownFieldState createState() => _ProptertyDropDownFieldState();
}

class _ProptertyDropDownFieldState extends State<ProptertyDropDownField> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButtonFormField<String>(
        icon: Image.asset(
          'assets/media/icon/up_down.png',
          height: 15,
          width: 15,
        ),
        decoration: InputDecoration(
          /*suffixIcon: Image.asset(
            'assets/media/icon/up_down.png',
            height: 5,
            width: 5,
          ),*/
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(width: 1),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.black),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.primaryColor),
          ),
        ),
        isExpanded: true,
        hint: Text(
          widget.labelText,
        ),
        items: widget.dropDownList!.map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        onChanged: (value) {
          widget.controll = value;
          printInfo(info: widget.controll.toString());
        },
      ),
    );
  }
}
