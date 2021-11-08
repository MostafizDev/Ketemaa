import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:ketemaa/core/utilities/app_assets/app_assets.dart';
import 'package:ketemaa/core/utilities/app_colors/app_colors.dart';
import 'package:ketemaa/core/utilities/app_dimension/app_dimenson.dart';
import 'package:ketemaa/core/utilities/app_dimension/app_sizes.dart';
import 'package:ketemaa/core/utilities/app_spaces/app_spaces.dart';
import 'package:ketemaa/features/home/data/remotedatarepo/home_remote_repository.dart';
import 'package:ketemaa/features/home/presentation/home.dart';

class CategoryCard extends StatelessWidget {
  List? category;

  CategoryCard({this.category});

  HomeRemoteRepository _homeRemoteRepository = HomeRemoteRepository();

  @override
  Widget build(BuildContext context) {
    print(QueryResult.optimistic().data);
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: category!.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: AppSizes.width3 / 130,
      ),
      itemBuilder: (BuildContext context, int index) {
        return Card(
          elevation: 5.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                AppAsset.demo_category,
                height: AppDimension.category_image_height,
                width: AppDimension.category_image_width,
              ),
              AppSpaces.spaces_height_10,
              Padding(
                padding:EdgeInsets.only(
                  left: AppDimension.padding_1,
                  right: AppDimension.padding_1,
                ),
                child: Text(
                  category![index].node.name,
                  textAlign: TextAlign.center,
                  style:
                      Get.textTheme.bodyText1!.copyWith(color: AppColors.black),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
