import 'package:dartz/dartz.dart';
import 'package:ketemaa/core/error/failures.dart';
import 'package:ketemaa/features/auth/data/Repository/authentication_repository.dart';
import 'package:http/http.dart' as http;

class AuthenticationRemoteRepository extends AuthRepository{
  @override
  Future<Either<http.Response, Failure>> emailVerification(String email) {
    // TODO: implement emailVerification
    throw UnimplementedError();
  }

  @override
  Future<Either<http.Response, Failure>> passwordUpdate(String password) {
    // TODO: implement passwordUpdate
    throw UnimplementedError();
  }

  @override
  Future<Either<http.Response, Failure>> phoneVerification(String num) {
    // TODO: implement phoneVerification
    throw UnimplementedError();
  }

  @override
  Future<Either<http.Response, Failure>> signIn() {
    // TODO: implement signIn
    throw UnimplementedError();
  }

  @override
  Future<Either<http.Response, Failure>> signUp() {
    // TODO: implement signUp
    throw UnimplementedError();
  }
}