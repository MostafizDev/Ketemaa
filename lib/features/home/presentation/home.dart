import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ketemaa/core/utilities/app_dimension/app_dimension.dart';
import 'package:ketemaa/core/utilities/app_dimension/app_sizes.dart';
import 'package:ketemaa/core/utilities/app_spaces/app_spaces.dart';
import 'package:ketemaa/core/utilities/common_widgets/app_loading.dart';
import 'package:ketemaa/features/_global/sharedpreference/sp_controller.dart';
import 'package:ketemaa/features/home/_controller/home_controller.dart';
import 'package:ketemaa/core/utilities/common_widgets/category_card.dart';
import 'package:ketemaa/features/home/presentation/widgets/porperty_for_rent_listview.dart';

class Home extends StatelessWidget {
  var cityId;

  Home({this.cityId});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    HomeController.to.fetchHomeCategoryData();

    SharedPreferenceController.to.getToken();

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: AppDimension.padding_16,
            right: AppDimension.padding_16,
          ),
          child: SafeArea(
            child: Column(
              children: [
                const Text('Search Bar'),
                Obx(() {
                  return HomeController.to.categoryModel.value.categories == null
                      ? AppLoading()
                      : CategoryCard(
                    category: HomeController
                        .to.categoryModel.value.categories!.edges!,
                    //need to null check
                    mainAxisSpace: 3.0,
                    crossAxisSpace: 3.0,
                    childCount: 3,
                    childAspectRatio: AppSizes.width3 / 130,
                    cardElavation: 3.0,
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
      ),
    );
  }
}