import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ketemaa/core/language/language_string.dart';
import 'package:ketemaa/features/home/_controller/home_controller.dart';
import 'package:ketemaa/features/home/data/models/property_rent_model.dart';
import 'package:ketemaa/features/home/presentation/widgets/popular_in_row.dart';
import 'package:ketemaa/features/home/presentation/widgets/residential_for_rent_card.dart';

class PropertyListView extends StatelessWidget {
  String POST_RESIDENTIAL_RENT_AD = "post_residential_rent_ad";
  String POST_COMMERCIAL_RENT_AD = "post_commercial_rent_ad";
  String POST_ROOM_RENT_AD = "post_rooms_rent_ad";

  @override
  Widget build(BuildContext context) {
    RxList<Edges> API_edge = HomeController
        .to.propertyRentModel.value.propertyRentAdvertises!.edges!.obs;

    List<List<Widget>> _list_widget = [];

    List<Edges> _list_edges = HomeController
        .to.propertyRentModel.value.propertyRentAdvertises!.edges!;

    while (_list_edges.isNotEmpty) {
      for (int i = 0; i < _list_edges.length; i++) {
        if (_list_edges[0].node!.category!.name ==
            _list_edges[i].node!.category!.name) {
          List<Widget> _temp_list = [];
          Widget _widget = Column(
            children: [
              i > 0
                  ? Container()
                  : PopularInRow(
                      type: AppLanguageString.POPULAR_IN.tr,
                      popularIn: API_edge[i].node!.category!.name.toString(),
                    ),
              ResidentialForRentCard(
                categorykeyword: API_edge[i].node!.category!.keyword.toString(),
                subCategory: API_edge,
              ),
            ],
          );
          _temp_list.add(_widget);
          _list_widget.add(_temp_list);

          _list_edges.removeAt(i);
        }
      }
    }

    //  _list_widget.sort((a,b)=>a.)

    return SingleChildScrollView(
      child: Container(
        color: Colors.grey,
        child: Column(
          children: _list_widget
              .map((e) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.green,
                      child: Column(
                        children: e,
                      ),
                    ),
                  ))
              .toList(),
        ),
      ),
    );

    /*
    * Column(
                  children: [
                    PopularInRow(
                      type: AppLanguageString.POPULAR_IN.tr,
                      popularIn:
                          API_edge[index].node!.category!.name.toString(),
                    ),
                    ResidentialForRentCard(
                      categorykeyword:
                          API_edge[index].node!.category!.keyword.toString(),
                      subCategory: API_edge,
                    ),
                  ],
                )
    *
    *
    * */

    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 3,
        itemBuilder: (context, index) {
          return API_edge[index].node!.category!.keyword.toString() ==
                  POST_RESIDENTIAL_RENT_AD
              ? Column(
                  children: [
                    PopularInRow(
                      type: AppLanguageString.POPULAR_IN.tr,
                      popularIn:
                          API_edge[index].node!.category!.name.toString(),
                    ),
                    ResidentialForRentCard(
                      categorykeyword:
                          API_edge[index].node!.category!.keyword.toString(),
                      subCategory: API_edge,
                    ),
                  ],
                )
              : API_edge[index].node!.category!.keyword.toString() ==
                      POST_COMMERCIAL_RENT_AD
                  ? Column(
                      children: [
                        PopularInRow(
                          type: AppLanguageString.POPULAR_IN.tr,
                          popularIn:
                              API_edge[index].node!.category!.name.toString(),
                        ),
                        ResidentialForRentCard(
                          categorykeyword: API_edge[index]
                              .node!
                              .category!
                              .keyword
                              .toString(),
                          subCategory: API_edge,
                        ),
                      ],
                    )
                  : API_edge[index].node!.category!.keyword.toString() ==
                          POST_ROOM_RENT_AD
                      ? Column(
                          children: [
                            PopularInRow(
                              type: AppLanguageString.POPULAR_IN.tr,
                              popularIn: API_edge[index]
                                  .node!
                                  .category!
                                  .name
                                  .toString(),
                            ),
                            ResidentialForRentCard(
                              categorykeyword: API_edge[index]
                                  .node!
                                  .category!
                                  .keyword
                                  .toString(),
                              subCategory: API_edge,
                            ),
                          ],
                        )
                      : Container();
        });
  }
}
