import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ketemaa/core/utilities/app_dimension/app_dimension.dart';
import 'package:ketemaa/core/utilities/app_spaces/app_spaces.dart';
import 'package:ketemaa/core/utilities/common_widgets/app_loading.dart';
import 'package:ketemaa/features/_global/sharedpreference/sp_controller.dart';
import 'package:ketemaa/features/home/_controller/home_controller.dart';
import 'package:ketemaa/features/home/presentation/widgets/category_card.dart';
import 'package:ketemaa/features/home/presentation/widgets/porperty_for_rent_listview.dart';

class Home extends StatelessWidget {
  var cityId;

  Home({this.cityId});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    HomeController.to.fetchHomeCategoryData();
    HomeController.to.fetchRentPropertiesData("38");

    SharedPreferenceController.to.getToken();

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: AppDimension.padding,
            right: AppDimension.padding,
          ),
          child: Column(
            children: [
              Obx(() {
                return HomeController.to.categoryModel.value.categories == null
                    ? AppLoading()
                    : CategoryCard(
                        category: HomeController.to.categoryModel.value
                            .categories!.edges!, //need to null check
                      );
              }),
              AppSpaces.spaces_height_10,
              HomeController
                          .to.propertyRentModel.value.propertyRentAdvertises ==
                      null
                  ? AppLoading()
                  : const PropertyListView(),
            ],
          ),
        ),
      ),
    );
  }
}
