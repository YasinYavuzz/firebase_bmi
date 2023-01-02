import 'package:firebase_bmi/app/data/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {

  AuthService auth = AuthService();

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  RxString returnEmailMessage = "".obs;
  RxString returnPasswordMessage = "".obs;  

  RxBool passwordVisible = true.obs;

  void changePasswordVisible(){
    passwordVisible.value = !passwordVisible.value;
  }

  void signIn(){
    if (returnEmailMessage.value == "Böyle bir kişi bulunamadı" || returnPasswordMessage.value == "Hatalı Şifre") {
      
    } else {
      auth.sigInUser(email.text, password.text);
    }
    
  }
  


}
  