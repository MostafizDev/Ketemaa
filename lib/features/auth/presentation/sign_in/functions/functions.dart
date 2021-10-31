import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:ketemaa/core/error/failures.dart';
import 'package:ketemaa/features/auth/data/LocalDataRepo/authentication_local_reposiotory.dart';
import 'package:ketemaa/features/auth/data/RemoteDataRepo/auithenticiation_remote_repository.dart';
import 'package:ketemaa/features/auth/data/Repository/authentication_repository.dart';

class SignInFunctions{

  AuthRepository _authLocalRepository = AuthenticationLocalRepository() ;
  AuthRepository _authRemoteRepository = AuthenticationRemoteRepository() ;

 Future<Either<http.Response, Failure>>  logIn() async{

   return await _authRemoteRepository.signIn();

  }

}