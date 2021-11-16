import 'package:dropdown_plus/dropdown_plus.dart';
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
        children: [
          AppSpaces.spaces_height_30,
          Text(
            AppLanguageString.PROPERTY_LISTFORM_TITLE.tr,
            style:
                Get.textTheme.headline4!.copyWith(fontWeight: FontWeight.bold),
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

          ///Title
          PropertyTextInputField(
            hintText: AppLanguageString.TITLE.tr,
            textType: TextInputType.text,
            controller: PlaceAddController.to.propertyRentTitleFieldController,
            optionalText: false,
          ),
          AppSpaces.spaces_height_15,

          ///360 Tour
          PropertyTextInputField(
            hintText: AppLanguageString.TOUR360.tr,
            textType: TextInputType.text,
            controller: PlaceAddController.to.propertyRent360FieldController,
            optionalText: true,
          ),
          AppSpaces.spaces_height_15,

          ///Youtube
          PropertyTextInputField(
            hintText: AppLanguageString.YOUTUBE.tr,
            textType: TextInputType.text,
            controller:
                PlaceAddController.to.propertyRentYoutubeFieldController,
            optionalText: true,
          ),
          AppSpaces.spaces_height_15,

          ///Phone Number
          PropertyTextInputField(
            hintText: AppLanguageString.PHONE.tr,
            textType: TextInputType.number,
            controller: PlaceAddController.to.propertyRentPhoneFieldController,
            optionalText: false,
          ),
          AppSpaces.spaces_height_15,

          ///Price
          PropertyTextInputField(
            hintText: AppLanguageString.PRICE.tr,
            textType: TextInputType.number,
            controller: PlaceAddController.to.propertyRentPriceFieldController,
            optionalText: false,
          ),
          AppSpaces.spaces_height_15,

          ///Description
          PropertyTextInputField(
            hintText: AppLanguageString.SIZE.tr,
            textType: TextInputType.text,
            controller: PlaceAddController.to.propertyRentSizeFieldController,
            optionalText: false,
          ),
          AppSpaces.spaces_height_15,

          ///Bedrooms
          TextDropdownFormField(
            controller: PlaceAddController.to.propertyRentBedroomFieldController,
            options: const ['1', '2', '3'],
            decoration: InputDecoration(
                contentPadding:  EdgeInsets.all( 16.0),

                border: const OutlineInputBorder(),
                suffixIcon: Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Image.asset(AppAsset.up_down),
                ),
                suffixIconConstraints: BoxConstraints(
                  maxHeight: AppDimension.up_down_icon_size,
                  maxWidth: AppDimension.up_down_icon_size,
                ),
                hintText: AppLanguageString.BEDROOM.tr,
                focusColor: AppColors.primaryColor),
            dropdownHeight: 200,
          ),
          AppSpaces.spaces_height_15,

          ///Property Ref ID
          PropertyTextInputField(
            hintText: AppLanguageString.PR_REF_ID.tr,
            textType: TextInputType.text,
            controller: PlaceAddController.to.propertyRentRefIDFieldController,
            optionalText: true,
          ),
          AppSpaces.spaces_height_15,

          ///RERA Landlord Name
          PropertyTextInputField(
            hintText: AppLanguageString.RERA_LANDLORD.tr,
            textType: TextInputType.text,
            controller: PlaceAddController
                .to.propertyRentRERALandlordNameFieldController,
            optionalText: true,
          ),
          AppSpaces.spaces_height_15,

          ///RERA Title Deed Number
          PropertyTextInputField(
            hintText: AppLanguageString.RERA_DEED_NUMBER.tr,
            textType: TextInputType.text,
            controller: PlaceAddController.to.propertyRentDeedFieldController,
            optionalText: true,
          ),
          AppSpaces.spaces_height_15,

          ///RERA Pre Registration Number
          PropertyTextInputField(
            hintText: AppLanguageString.RERA_PRE_REG.tr,
            textType: TextInputType.text,
            controller: PlaceAddController.to.propertyRentPreRegFieldController,
            optionalText: true,
          ),
          AppSpaces.spaces_height_15,

          ///Minimum Contact Period
          PropertyTextInputField(
            hintText: AppLanguageString.CNT_PER.tr,
            textType: TextInputType.number,
            controller:
                PlaceAddController.to.propertyRentContactFieldController,
            optionalText: true,
          ),
          AppSpaces.spaces_height_15,

          ///Notice Period
          PropertyTextInputField(
            hintText: AppLanguageString.NOTICE.tr,
            textType: TextInputType.number,
            controller: PlaceAddController.to.propertyRentNoticeFieldController,
            optionalText: true,
          ),
          AppSpaces.spaces_height_15,

          ///Maintenance Fee
          PropertyTextInputField(
            hintText: AppLanguageString.MAINTAIN_FEE.tr,
            textType: TextInputType.number,
            controller:
                PlaceAddController.to.propertyRentMaintainFeeFieldController,
            optionalText: true,
          ),
          AppSpaces.spaces_height_15,

          ///Building
          PropertyTextInputField(
            hintText: AppLanguageString.BUILDING.tr,
            textType: TextInputType.text,
            controller:
                PlaceAddController.to.propertyRentBuildingFieldController,
            optionalText: true,
          ),
          AppSpaces.spaces_height_15,

          ///Neighbourhood
          PropertyTextInputField(
            hintText: AppLanguageString.NEIGHBOUR.tr,
            textType: TextInputType.text,
            controller:
                PlaceAddController.to.propertyRentNeighbourFieldController,
            optionalText: true,
          ),
        ],
      ),
    );
  }
}
