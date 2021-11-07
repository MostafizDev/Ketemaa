import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ketemaa/core/utilities/app_colors/app_colors.dart';
import 'package:ketemaa/core/utilities/app_dimension/app_dimenson.dart';
import 'package:ketemaa/core/utilities/app_dimension/app_sizes.dart';
import 'package:ketemaa/core/utilities/app_spaces/app_spaces.dart';
import 'package:ketemaa/features/home/presentation/home.dart';

class CategoryCard extends StatelessWidget {
  var index;
  CategoryCard({Key? key,this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: allCategory.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: AppSizes.width3 / 150,
      ),
      itemBuilder: (BuildContext context, int index) {
        return
          Card(
            elevation: 5.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  allCategory[index].categoryImage.toString(),
                  height: AppDimension.category_image_height,
                  width: AppDimension.category_image_width,
                ),
                AppSpaces.spaces_height_10,
                Text(
                  allCategory[index].categoryName.toString(),
                  textAlign: TextAlign.center,
                  style: Get.textTheme.bodyText1!
                      .copyWith(color: AppColors.black),
                ),
              ],
            ),
          );
      },
    );
  }
}

















