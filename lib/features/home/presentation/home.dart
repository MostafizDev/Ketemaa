import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:ketemaa/core/language/language_string.dart';
import 'package:ketemaa/core/utilities/app_assets/app_assets.dart';
import 'package:ketemaa/core/utilities/app_colors/app_colors.dart';
import 'package:ketemaa/core/utilities/app_dimension/app_dimenson.dart';
import 'package:ketemaa/core/utilities/app_dimension/app_sizes.dart';
import 'package:ketemaa/core/utilities/app_spaces/app_spaces.dart';
import 'package:ketemaa/core/utilities/app_theme/app_theme.dart';
import 'package:ketemaa/features/home/presentation/widgets/category_card.dart';
import 'package:ketemaa/features/home/data/models/all_category_model.dart';
import 'package:ketemaa/features/home/presentation/widgets/popular_in_row.dart';
import 'package:ketemaa/features/home/presentation/widgets/residential_card.dart';

String readRepositories = '''
  query  {
  allCategoryKeyword
} 
''';
AllCategory _allCategory = AllCategory();

List<AllCategory> allCategory = [
  AllCategory(
    categoryName: "Property for Rent",
    categoryImage: AppAsset.demo_category,
  ),
  AllCategory(
    categoryName: "Property for Sale",
    categoryImage: AppAsset.demo_category,
  ),
  AllCategory(
    categoryName: "Rooms for Rent",
    categoryImage: AppAsset.demo_category,
  ),
  AllCategory(
    categoryName: "Motors",
    categoryImage: AppAsset.demo_category,
  ),
  AllCategory(
    categoryName: "Classifieds",
    categoryImage: AppAsset.demo_category,
  ),
  AllCategory(
    categoryName: "Furniture & Garden",
    categoryImage: AppAsset.demo_category,
  ),
  AllCategory(
    categoryName: "Mobile Phone & Tablets",
    categoryImage: AppAsset.demo_category,
  ),
  AllCategory(
    categoryName: "Community",
    categoryImage: AppAsset.demo_category,
  ),
  AllCategory(
    categoryName: "Jobs",
    categoryImage: AppAsset.demo_category,
  ),
];

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          left: AppDimension.padding,
          right: AppDimension.padding,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CategoryCard(),
              AppSpaces.spaces_height_10,
              PopularInRow(
                type: AppLanguageString.POPULAR_IN.tr,
                popularIn: AppLanguageString.RESIDENTIAL_FOR_RENT.tr,
              ),
              Row(
                children: const [
                  ResidentialCard(),
                  ResidentialCard(),
                  ResidentialCard(),
                  ResidentialCard(),
                ],
              ),
              /*ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: allCategory.length,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return CategoryCard(
                    index: index,
                  );
                },
              ),*/
            ],
          ),
        ),
      ),
    );
  }
}
