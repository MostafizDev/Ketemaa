import 'package:flutter/material.dart';
import 'package:ketemaa/core/utilities/app_assets/app_assets.dart';
import 'package:ketemaa/core/utilities/app_dimension/app_sizes.dart';
import 'package:ketemaa/core/utilities/app_spaces/app_spaces.dart';

class ResidentialCard extends StatelessWidget {
  const ResidentialCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Container(
        height: 200,
        width: AppSizes.width45,
        color: Colors.white24,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 110,
              width: AppSizes.width45,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(10.0),
                    topLeft: Radius.circular(10.0)),
                image: DecorationImage(
                  image: AssetImage(
                    AppAsset.apartment_1.toString(),
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            AppSpaces.spaces_height_5,
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Price'),
                  Text(
                    'Attribute-1' '.' 'Attribute-2',
                    maxLines: 2,
                  ),
                  Text('Location'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
