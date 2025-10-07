import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/resorces/components/round_button.dart';
import 'package:getx_mvvm/view_model/controller/loginviewmodel.dart';
import 'package:getx_mvvm/utilis/utilis.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final LoginVM = Get.put(LoginViewModel());

  final _keyform = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text('Login Screen')),

      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Form(
                  key: _keyform,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: LoginVM.emailcontroller.value,
                        focusNode: LoginVM.emailfocusnode.value,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            AppUtils.SnackBar('Email'.tr, 'email_hint'.tr);
                            return 'email_hint'.tr;
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintText: 'email_hint'.tr,
                        ),
                      ),

                      SizedBox(height: 10),
                      TextFormField(
                        controller: LoginVM.passwordcontroller.value,
                        focusNode: LoginVM.passwordfocusnode.value,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            AppUtils.SnackBar(
                              'Password'.tr,
                              'password_hint'.tr,
                            );
                            return 'password_hint'.tr;
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintText: 'password_hint'.tr,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Obx(
                  () => RoundButton(
                    loading: LoginVM.isLoading.value,
                    onpress: () {
                      if (_keyform.currentState!.validate()) {
                        LoginVM.loginApi();
                        print("Form is valid");

                        AppUtils.SnackBar('Success', 'Form is valid ✅');
                      } else {
                        print("Form is not valid");
                        AppUtils.SnackBar('Error', 'Please fill all fields ❌');
                      }
                    },
                    title: 'login'.tr,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
