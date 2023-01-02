import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_bmi/app/controllers/signup_controller.dart';
import 'package:firebase_bmi/app/data/services/firestore_service.dart';
import 'package:firebase_bmi/app/routes/app_pages.dart';
import 'package:get/get.dart';

class AuthService extends GetxService{
  Future<AuthService> init() async {
    return this;
  }
  FirestoreService firestore = FirestoreService();

  RxString returnEmailMessage = "".obs;
  RxString returnPasswordMessage = "".obs;  
  
  createUser(email, password, kullanici_adi) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      ).then((value) => firestore.addUsers(email, {'kullanici_adi' : kullanici_adi, 'email' : email})).then((value) => Get.toNamed(AppRoutes.LOGINPAGE));
      //
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        //print('The password provided is too weak.');
        //return Get.defaultDialog(title: 'şifre 6 karakterde kısa olamaz');
        //return returnPasswordMessage.value = 'Şifre 6 karakterden kısa olamaz';
      } else if (e.code == 'email-already-in-use') {
        //print('The account already exists for that email.');
        return Get.snackbar('Hata','Böyle bir kullanıcı mevcut değil!!!');
        // return returnEmailMessage.value = 'Böyle bir kullanıcı mevcut';
      }
    } catch (e) {
      print(e);
    }
  }
  sigInUser(email, password) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,).then((value) => print('Giriş başarılı')).then((value) => Get.offAllNamed(AppRoutes.HOMEPAGE));
      // ).then((value) => Get.offAndToNamed(AppRoutes.HOME,result: Get.snackbar('Giriş Başarılı', email)));
      
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        //print('No user found for that email.');
        // return Get.defaultDialog(title: 'Böyle bir kullanıcı bulunamadı');
        return returnEmailMessage.value = "Böyle bir kişi bulunamadı";
      } else if (e.code == 'wrong-password') {
        //print('Wrong password provided for that user.');
        // return Get.defaultDialog(title: 'Hatalı şifre');
        returnEmailMessage.value = "";
        return returnPasswordMessage.value = "Hatalı Şifre";
      }
    }
  }
}