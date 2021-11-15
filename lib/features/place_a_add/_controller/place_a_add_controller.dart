import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:ketemaa/core/error/failures.dart';
import 'package:ketemaa/features/place_a_add/data/models/city_model.dart';
import 'package:ketemaa/features/place_a_add/data/remotedatarepo/place_add_remote_repository.dart';
import 'package:ketemaa/features/place_a_add/data/repository/place_add_repository.dart';

class PlaceAddController {
  static PlaceAddController to = Get.find();

  Rx<int> currentPage = 0.obs;

  RxBool cityChecked = false.obs;
  final PlaceAddRepository _placeAddRepository = PlaceAddRemoteRepository();

  TextEditingController propertyRentTitleFieldController =
      TextEditingController();

  Rx onChangedValue = 0.obs;

  RxBool titleSubmitButton = false.obs;

  RxBool showBottomSheet = true.obs;

  Rx<CityModel> cityModel = CityModel().obs;

  fetchCityData() async {
    Either<QueryResult, Failure> _response =
        await _placeAddRepository.placeAddCities();
    _response.fold((l) {
      //printInfo(info: " Success Data :: " + l.data.toString());
      try {
        cityModel.value = CityModel.fromJson(l.data!);
      } on Exception catch (e) {
        Right(DataNotFound());
      }
      /*printInfo(info:" Error Data :: "  + categoryModel.value.categories!.edges![0].node!.name.toString());*/
    }, (r) => printInfo(info: r.toString()));
  }
}
