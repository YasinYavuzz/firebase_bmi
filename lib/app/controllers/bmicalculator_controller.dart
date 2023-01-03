
import 'package:get/get.dart';

class BmiCalculatorController extends GetxController {

  RxBool isMaleGender = false.obs;
  RxBool isFemaleGender = false.obs;

  void isSelectedMaleGender(){
    isMaleGender.value = !isMaleGender.value;
    isFemaleGender.value = false;
  }

  void isSelectedFemaleGender(){
    isFemaleGender.value = !isFemaleGender.value;
    isMaleGender.value = false;
  }


}
  