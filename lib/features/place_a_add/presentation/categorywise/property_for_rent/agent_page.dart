import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ketemaa/core/language/language_string.dart';
import 'package:ketemaa/core/utilities/app_assets/app_assets.dart';

class PropertyAgentPage extends StatelessWidget {
  const PropertyAgentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 2.0,
        backgroundColor: Colors.white,
        title: Text(
          AppLanguageString.PLACE_A_ADD.tr,
          style: Get.textTheme.headline2!.copyWith(fontWeight: FontWeight.bold),
        ),
        leading: FlatButton(
          onPressed: () {
            Get.back();
          },
          child: Image.asset(
            AppAsset.back_icon,
            height: 18.0,
            width: 18.0,
          ),
        ),
      ),
      body: Center(
        child: Text('data'),
      ),
    );
  }
}
