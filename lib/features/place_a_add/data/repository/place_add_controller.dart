import 'package:dartz/dartz.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:ketemaa/core/error/failures.dart';

abstract class PlaceAddController {
  Future<Either<QueryResult, Failure>> cities();
}