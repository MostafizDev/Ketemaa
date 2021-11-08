import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ketemaa/core/language/language_string.dart';
import 'package:ketemaa/core/utilities/app_dimension/app_dimenson.dart';
import 'package:ketemaa/core/utilities/app_spaces/app_spaces.dart';
import 'package:ketemaa/features/home/_controller/home_controller.dart';
import 'package:ketemaa/features/home/presentation/widgets/category_card.dart';
import 'package:ketemaa/features/home/presentation/widgets/popular_in_row.dart';
import 'package:ketemaa/features/home/presentation/widgets/residential_for_rent_card.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    HomeController.to.fetchHomeCategoryData();
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: AppDimension.padding,
            right: AppDimension.padding,
          ),
          child: Column(
            children: [
              Obx(() {
                return CategoryCard(
                  category:
                      HomeController.to.categoryModel.value.categories!.edges!,
                );
              }),
              AppSpaces.spaces_height_10,
              PopularInRow(
                type: AppLanguageString.POPULAR_IN.tr,
                popularIn: AppLanguageString.RESIDENTIAL_FOR_RENT.tr,
              ),
              SizedBox(
                width: Get.width,
                height: Get.height * .35,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 7,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return ResidentialForRentCard();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
