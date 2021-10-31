import 'package:dartz/dartz.dart';
import 'package:http/src/response.dart';
import 'package:ketemaa/core/error/failures.dart';
import 'package:ketemaa/features/auth/data/Repository/authentication_repository.dart';

class AuthenticationLocalRepository extends AuthRepository{
  @override
  Future<Either<Response, Failure>> emailVerification(String email) {
    // TODO: implement emailVerification
    throw UnimplementedError();
  }

  @override
  Future<Either<Response, Failure>> passwordUpdate(String password) {
    // TODO: implement passwordUpdate
    throw UnimplementedError();
  }

  @override
  Future<Either<Response, Failure>> phoneVerification(String num) {
    // TODO: implement phoneVerification
    throw UnimplementedError();
  }

  @override
  Future<Either<Response, Failure>> signIn() {
    // TODO: implement signIn
    throw UnimplementedError();
  }

  @override
  Future<Either<Response, Failure>> signUp() {
    // TODO: implement signUp
    throw UnimplementedError();
  }

}