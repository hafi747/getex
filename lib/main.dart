import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:getx_mvvm/resorces/app_localization/language_localization.dart';
import 'package:getx_mvvm/resorces/routes/routes.dart';
import 'package:getx_mvvm/resorces/routes/routesname.dart';
import 'package:getx_mvvm/view/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: languages(),
      locale: Locale('en', 'US'),
      fallbackLocale: Locale('en', 'US'),
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: Routesname.splashScreen,
      home: SplashScreen(),
      getPages: AppRoutes.appRoutes(),
    );
  }
}
