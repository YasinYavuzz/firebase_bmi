
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  RxBool passwordVisible = true.obs;

  void changePasswordVisible(){
    passwordVisible.value = !passwordVisible.value;
  }
}
  