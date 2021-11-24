import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ketemaa/core/utilities/app_assets/app_assets.dart';
import 'package:ketemaa/core/utilities/app_colors/app_colors.dart';
import 'package:ketemaa/core/utilities/app_dimension/app_dimension.dart';
import 'package:ketemaa/core/utilities/app_dimension/app_sizes.dart';
import 'package:ketemaa/core/utilities/app_spaces/app_spaces.dart';
import 'package:ketemaa/features/home/presentation/widgets/property_details/details_divider.dart';
import 'package:ketemaa/features/home/presentation/widgets/property_details/location.dart';
import 'package:ketemaa/features/home/presentation/widgets/property_details/top_description.dart';

class PropertyDetailsPage extends StatelessWidget {
  const PropertyDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //extendBodyBehindAppBar: true,
      //appBar: CustomAppBar(),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: AppColors.primaryColor,
            leading: InkWell(
              onTap: () {},
              child: Container(
                height: AppDimension.productpageiconsize,
                width: AppDimension.productpageiconsize,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.keyboard_backspace_outlined,
                  color: AppColors.primaryColor,
                ),
              ),
            ),
            leadingWidth: AppDimension.productpageiconsize,
            centerTitle: true,
            actions: [
              InkWell(
                onTap: () {},
                child: Container(
                  height: AppDimension.productpageiconsize,
                  width: AppDimension.productpageiconsize,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.favorite_border,
                    color: AppColors.primaryColor,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: AppDimension.productpageiconsize,
                    width: AppDimension.productpageiconsize,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.share,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ),
              ),
            ],
            elevation: 2,
            pinned: true,
            expandedHeight: AppSizes.height3,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              collapseMode: CollapseMode.parallax,
              title: Text('Name'),
              background: Container(
                height: AppSizes.height3,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        AppAsset.apartment_1,
                      ),
                      fit: BoxFit.cover),
                ),
              ),
            ),
          ),
          SliverFillRemaining(
            fillOverscroll: true,
            hasScrollBody: true,
            //child: _buildContent(context),
            child: ListView(
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                PropertyTopDescription(),
                PropertyDetailsDivider(),
                PropertyLocationDetails(),
                PropertyDetailsDivider(),
              ],
            ),
          ),
        ],
      ),
      //bottomNavigationBar: addToCartBottom(),
    );
  }
}
