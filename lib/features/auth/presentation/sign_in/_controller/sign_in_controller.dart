import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:ketemaa/app_routes/app_routes.dart';
import 'package:ketemaa/core/error/failures.dart';
import 'package:ketemaa/core/language/language_string.dart';
import 'package:ketemaa/core/utilities/common_widgets/app_snack_bar.dart';
import 'package:ketemaa/features/auth/data/RemoteDataRepo/auithenticiation_remote_repository.dart';
import 'package:ketemaa/features/auth/data/Repository/authentication_repository.dart';
import 'package:ketemaa/features/auth/data/models/user_login_model.dart';

class SigninController extends GetxController {
  static SigninController to = Get.find();

  //testFiledControllers

  TextEditingController emailTextFiledController = TextEditingController();
  TextEditingController passwordTextFiledController = TextEditingController();

  //repo
  AuthRepository _authRepository = AuthenticationRemoteRepository();

  RxString responseValue = "".obs;
  RxBool loading = false.obs;

  Rx<UserLoginModel> userLogin = UserLoginModel().obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  signIn({@required String? email, @required String? password}) async {
    if (_signInValidation()) {
      loading.value = true;
      Either<QueryResult, Failure> _response = await _authRepository.signIn(
          email: emailTextFiledController.text.toString(),
          password: passwordTextFiledController.text.toString());

      _response.fold((l) {
        loading.value = false;
        printInfo(info: " Success Data :: " + l.data.toString());
        try {
          //userLogin.value = UserLoginModel.fromJson(l.data!);
          l.data == null
              ? ''
              : userLogin.value = UserLoginModel.fromJson(l.data!);
          userLogin.value.loginUser!.success == true
              ? Get.toNamed(AppRoutes.CONTROLLER_PAGE)
              : printInfo(
                  info:
                      'False :${SigninController.to.userLogin.value.loginUser!.success}');
        } on Exception catch (e) {
          Right(DataNotFound());

          loading.value = false;
        }
        //printInfo(info: " Error Data :: " + l.data.toString());
      }, (r) {
        printInfo(info: r.toString());
        AppSnackBar.showErrorMessage();

        loading.value = false;
      });
    }
  }

  /*fetchUserLogin() async {
    Either<QueryResult, Failure> _response = await _authRepository.signIn(
        email:, password:);
    _response.fold((l) {
      printInfo(info: " Success Data :: " + l.data.toString());
      try {
        userLogin.value = UserLoginModel.fromJson(l.data!);
      } on Exception catch (e) {
        Right(DataNotFound());
      }
      printInfo(info: " Error Data :: " + l.data.toString());
    }, (r) => printInfo(info: r.toString()));
  }*/

  _signInValidation() {
    bool isValidated = false;

    if (emailTextFiledController.text.isEmpty) {
      isValidated = false;
      AppSnackBar.showErrorMessage(
          title: AppLanguageString.VALIDATION_FAILED.tr,
          body: AppLanguageString.EMAIL_IS_REQUIRED.tr);
      return false;
    } else if (passwordTextFiledController.text.isEmpty) {
      isValidated = false;
      AppSnackBar.showErrorMessage(
          title: AppLanguageString.VALIDATION_FAILED.tr,
          body: AppLanguageString.PASSWORD_IS_REQUIRED.tr);
      return false;
    } else {
      isValidated = true;
    }

    return isValidated;
  }
}
