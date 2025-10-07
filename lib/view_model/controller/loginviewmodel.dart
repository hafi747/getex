import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/repository/login_repository.dart';

class LoginViewModel extends GetxController {
  final _api = LoginRepository();
  final emailcontroller = TextEditingController().obs;
  final passwordcontroller = TextEditingController().obs;
  final emailfocusnode = FocusNode().obs;
  final passwordfocusnode = FocusNode().obs;
  RxBool isLoading = false.obs;

  Future<void> loginApi() async {
    isLoading.value = true;
    Map data = {
      'email': emailcontroller.value.text,
      'password': passwordcontroller.value.text,
    };
    final responce = await _api
        .loginApi(data)
        .then((value) {
          isLoading.value = false;
          print('responce $value');
          return value;
        })
        .onError((error, stackTrace) {
          isLoading.value = false;
          print('error $error');
          return error;
        });
    print('responce $responce');
  }
}
