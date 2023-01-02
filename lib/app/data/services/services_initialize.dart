import 'package:firebase_bmi/app/data/services/auth_service.dart';
import 'package:firebase_bmi/app/data/services/firebase_service.dart';
import 'package:get/get.dart';

class ServicesInitialize{
  static init() async{
    await Get.putAsync(() => FirebaseService().init());
    await Get.putAsync(() => AuthService().init());
  }
}