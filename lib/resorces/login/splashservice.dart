import 'dart:async';
import 'package:get/get.dart';
import 'package:getx_mvvm/resorces/routes/routesname.dart';
import 'package:getx_mvvm/view_model/login/user_preference.dart';

class SplashService {
  login() {
    UserPreference().getUserToken().then(
      (value) => {
        if (value?.token != null && value!.token!.isNotEmpty)
          {Get.toNamed(Routesname.homeScreen)}
        else
          {
            Timer(
              Duration(seconds: 3),
              () => Get.toNamed(Routesname.loginview),
            ),
          },
      },
    );

    Timer(Duration(seconds: 5), () => Get.toNamed(Routesname.loginview));
  }
}
