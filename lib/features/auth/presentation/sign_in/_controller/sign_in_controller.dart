import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:ketemaa/core/error/failures.dart';
import 'package:ketemaa/core/utilities/common_widgets/app_snack_bar.dart';
import 'package:ketemaa/features/auth/presentation/sign_in/functions/functions.dart';

class SigninController extends GetxController {

 static SigninController to =Get.find();
  SignInFunctions _signInFunctions = SignInFunctions();

  RxString response_value = "".obs;

  signIn() async {
    Either<http.Response, dynamic> _response = await _signInFunctions.logIn();

    _response.fold((response) {
      response_value(response.body);

      response_value.value = response.body;
    }, (error) {
      AppSnackBar.showErrorMessage();
    });
  }
}
