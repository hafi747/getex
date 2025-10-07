import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:getx_mvvm/resorces/components/internet_exception.dart';
// import 'package:getx_mvvm/resorces/components/round_button.dart';
import 'package:getx_mvvm/resorces/login/splashservice.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashService splashService = SplashService();
  @override
  void initState() {
    super.initState();

    splashService.login();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      // appBar: AppBar(centerTitle: true, title: const Text('Splash Screen')),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: Text('welcomeback'.tr)),
              // RoundButton(onpress: () {}, title: Text('Login').toString()),
              // const SizedBox(height: 20),
              // RoundButton(onpress: () {}, title: Text('Sign Up').toString()),
              // const SizedBox(height: 20),
              // InternetException(onpress: () {}),
              // const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
