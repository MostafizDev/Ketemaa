import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ketemaa/core/language/language_string.dart';
import 'package:ketemaa/core/utilities/app_assets/app_assets.dart';
import 'package:ketemaa/core/utilities/app_colors/app_colors.dart';
import 'package:ketemaa/core/utilities/app_dimension/app_dimension.dart';
import 'package:ketemaa/core/utilities/app_spaces/app_spaces.dart';
import 'package:ketemaa/features/place_a_add/_controller/place_a_add_controller.dart';
import 'package:ketemaa/features/place_a_add/presentation/categorywise/property_for_rent/widgets/form_text_field.dart';

class PropertyListingForm extends StatelessWidget {
  const PropertyListingForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(PlaceAddController());
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
      body: ListView(
        padding: EdgeInsets.only(
          left: AppDimension.padding_16,
          right: AppDimension.padding_16,
        ),
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AppSpaces.spaces_height_30,
          Text(
            AppLanguageString.PROPERTY_LISTFORM_TITLE.tr,
            style: Get.textTheme.headline4!
                .copyWith(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          AppSpaces.spaces_height_15,
          Text(
            AppLanguageString.PROPERTY_LISTFORM_DES.tr,
            style: Get.textTheme.bodyText2!
                .copyWith(fontWeight: FontWeight.bold, color: AppColors.grey),
            textAlign: TextAlign.center,
          ),
          AppSpaces.spaces_height_25,
          Text('Category Section'),
          AppSpaces.spaces_height_20,

          //Title
          PropertyTextInputField(
            labelText: AppLanguageString.TITLE.tr,
            textType: TextInputType.text,
            controller:
                PlaceAddController.to.propertyRentTitleFieldController,
            optionalText: false,
          ),
          AppSpaces.spaces_height_15,

          //360 Tour
          PropertyTextInputField(
            labelText: AppLanguageString.TOUR360.tr,
            textType: TextInputType.text,
            controller:
                PlaceAddController.to.propertyRent360FieldController,
            optionalText: true,
          ),
          AppSpaces.spaces_height_15,

          //Youtube
          PropertyTextInputField(
            labelText: AppLanguageString.YOUTUBE.tr,
            textType: TextInputType.text,
            controller:
                PlaceAddController.to.propertyRentYoutubeFieldController,
            optionalText: true,
          ),
          AppSpaces.spaces_height_15,

          //Youtube
          PropertyTextInputField(
            labelText: AppLanguageString.PHONE.tr,
            textType: TextInputType.number,
            controller:
                PlaceAddController.to.propertyRentPhoneFieldController,
            optionalText: false,
          ),
        ],
      ),
    );
  }
}
