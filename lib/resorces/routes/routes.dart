import 'package:getx_mvvm/resorces/routes/routesname.dart';
import 'package:getx_mvvm/view/login_view.dart';
import 'package:getx_mvvm/view/splash_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  static appRoutes() => [
    GetPage(
      name: Routesname.splashScreen,
      page: () => SplashScreen(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 290),
    ),

    GetPage(
      name: Routesname.loginview,
      page: () => LoginView(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 290),
    ),
  ];
}
