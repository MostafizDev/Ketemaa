import 'package:dartz/dartz.dart';
import 'package:get/get_utils/src/extensions/dynamic_extensions.dart';
import 'package:graphql/src/core/query_result.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:ketemaa/core/error/failures.dart';
import 'package:ketemaa/core/graphQLconfig/graphql_config.dart';
import 'package:ketemaa/core/network/network_info.dart';
import 'package:ketemaa/features/home/data/repository/home_repository.dart';

String _TAG = "_HomeRemoteRepository";

class HomeRemoteRepository extends HomeRepository {
  @override
  Future<Either<QueryResult, Failure>> category() async {
    Either<QueryResult, Failure> _categoryResponse;
    var category = '''
    query {
  categories{
    totalCount
		edges{
      node{
        name
        objectId
      }
    }
  }
}
   ''';

    try {
      if (true) {
        QueryResult _categoryResult =
            await AppGraphQLConfiguration.clientToQuery().query(QueryOptions(
          document: gql(category),
        ));
        _categoryResponse = Left(_categoryResult);
      }
      else{
        _categoryResponse = Right(DataNotFound());
      }
    } on Exception catch (e) {
      _categoryResponse =  Right(ServerFailure());
    }

    return _categoryResponse;
    //printInfo(info: "$_TAG gq response :: ${queryResult.data} ");
    //printInfo(info: "$_TAG gq response :: ${categoryQuery.data!['categories']['edges'][0]['node']['name']} ");
  }

  @override
  Future<Either<QueryResult, Failure>> residentialForRent() {
    throw UnimplementedError();
  }
}
