import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_bmi/app/controllers/signup_controller.dart';
import 'package:firebase_bmi/app/routes/app_pages.dart';
import 'package:get/get.dart';

class AuthService extends GetxService{
  Future<AuthService> init() async {
    return this;
  }

  // SignupController controller = Get.put(SignupController());
  // RxString returnPasswordMessage = "".obs;
  
  
  createUser(email, password) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      ).then((value) => Get.offAndToNamed(AppRoutes.LOGINPAGE,result: Get.snackbar('Kullanıcı Oluşturuldu', email)));
      //
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        //print('The password provided is too weak.');
        //return Get.defaultDialog(title: 'şifre 6 karakterde kısa olamaz');
        //return returnPasswordMessage.value = 'Şifre 6 karakterden kısa olamaz';
      } else if (e.code == 'email-already-in-use') {
        //print('The account already exists for that email.');
        return Get.snackbar('Hata','Böyle bir kullanıcı mevcut!!!');
        // return returnEmailMessage.value = 'Böyle bir kullanıcı mevcut';
      }
    } catch (e) {
      print(e);
    }
  }






}