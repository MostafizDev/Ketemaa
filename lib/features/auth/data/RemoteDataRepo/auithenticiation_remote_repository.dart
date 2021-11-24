import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:ketemaa/core/error/failures.dart';
import 'package:ketemaa/core/graphQLConfig/graphql_config.dart';
import 'package:ketemaa/core/utilities/common_widgets/app_snack_bar.dart';
import 'package:ketemaa/features/auth/data/Repository/authentication_repository.dart';

class AuthenticationRemoteRepository extends AuthRepository {
  String _TAG = "_AuthenticationRemoteRepository";

  @override
  Future<Either<QueryResult, Failure>> emailVerification(String email) {
    // TODO: implement emailVerification
    throw UnimplementedError();
  }

  @override
  Future<Either<QueryResult, Failure>> passwordUpdate(String password) {
    // TODO: implement passwordUpdate
    throw UnimplementedError();
  }

  @override
  Future<Either<QueryResult, Failure>> phoneVerification(String num) {
    // TODO: implement phoneVerification
    throw UnimplementedError();
  }

  @override
  Future<Either<QueryResult, Failure>> signIn(
      {String? email, String? password}) async {
    Either<QueryResult, Failure> _signInResponse;
    var userLogin = '''
    mutation {
        loginUser(email: "$email", password: "$password"){
          success
          access
          refresh
          user{
            username
            email
            phone
          }
        }
    }
   ''';

    try {
      QueryResult _signInResult =
          await AppGraphQLConfiguration.clientToQuery().mutate(MutationOptions(
        document: gql(userLogin),
      ));

      if (_signInResult.exception == null) {
        printInfo(info: '58' + _signInResult.exception.toString());
        _signInResponse = Left(_signInResult);
      } else {
        printInfo(info: '62 ' + _signInResult.exception.toString());
        _signInResponse = Right(GQException(_signInResult.exception));
      }

      printInfo(
          info:
              "$_TAG gq response :: ${_signInResult.exception!.graphqlErrors[0].message} ");
    } on Exception catch (e) {
      _signInResponse = Right(ServerFailure());
      printInfo(info: 'Catch');
    }
    return _signInResponse;
  }

  @override
  Future<Either<QueryResult, Failure>> signUp() {
    // TODO: implement signUp
    throw UnimplementedError();
  }
}
