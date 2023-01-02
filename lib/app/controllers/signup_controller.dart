
import 'package:firebase_bmi/app/data/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  
  AuthService auth = AuthService();

  TextEditingController kullanici_adi = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController correctPassword = TextEditingController();

  RxBool passwordVisible = true.obs;
  RxBool correctPasswordVisible = true.obs;

  RxString returnKullaniciAdiMessage = "".obs;
  RxString returnCorrectPasswordMessage = "".obs;
  RxString returnEmailMessage = "".obs;
  RxString returnPasswordMessage= "".obs;

  void changePasswordVisible(){
    passwordVisible.value = !passwordVisible.value;
  }

  void changecorrectPasswordVisible(){
    correctPasswordVisible.value = !correctPasswordVisible.value;
  }

  isKullaiciAdiEmpty(){
    if (kullanici_adi.text.isEmpty) {
      return returnKullaniciAdiMessage.value = "Kullanıcı adı boş geçilemez";
    }
    else{
      return returnKullaniciAdiMessage.value = "";

    }
  }

  isEmailEmptyAndCorrectFormat(){

    if (email.text.isEmpty) {
      return returnEmailMessage.value = 'Email boş geçilemez';
    }
    else if (!email.text.contains('@') || !email.text.contains('.com')){
      return returnEmailMessage.value = 'Email doğru formatta değil';
    }
    else{
      return returnEmailMessage.value = '';
    }

  }

  isWeakPassword(){
    if (password.text.length < 6) {
      return returnPasswordMessage.value = 'Şifre 6 karakterden kısa olamaz';
    }
    else{
      return returnPasswordMessage.value = '';

    }
  }

  isPasswordEqualCorrectPassword(){
    if (password.text != correctPassword.text) {
      return returnCorrectPasswordMessage.value = "Şifreler eşleşmiyor";
    }
    else{
      return returnCorrectPasswordMessage.value = '';
    }
  }

  void createUser(){
    isKullaiciAdiEmpty();
    isPasswordEqualCorrectPassword();
    isWeakPassword();
    isEmailEmptyAndCorrectFormat();
    if (returnPasswordMessage.value == "Şifre 6 karakterden kısa olamaz" || returnEmailMessage.value == "Email boş geçilemez" || returnEmailMessage.value == "Email doğru formatta değil" || returnKullaniciAdiMessage.value == "Kullanıcı adı boş geçilemez" || returnCorrectPasswordMessage.value == "Şifreler eşleşmiyor") {
      // return Get.defaultDialog(title: 'Kullanıcı O')
    } else {
      auth.createUser(email.text, password.text, kullanici_adi.text);
    } 
  }
}
  