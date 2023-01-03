import 'package:firebase_bmi/app/data/services/firestore_service.dart';
import 'package:get/get.dart';


class BmiCalculatorController extends GetxController {

  FirestoreService firestore = FirestoreService();

  // Gender
  RxBool isMaleGender = false.obs;
  RxBool isFemaleGender = false.obs;

  // Height
  RxDouble minHeight = 60.0.obs;
  RxDouble maxHeight = 230.0.obs;
  RxDouble heightValue = 180.0.obs;

  // Weight
  RxInt weightValue = 70.obs;

  // Age
  RxInt ageValue = 30.obs;

  // BMI Score
  RxDouble bmiScore = 0.0.obs;
  RxString bmiText = "".obs;
  RxString bmiTextColor = "".obs;

  // Gender
  void isSelectedMaleGender() {
    isMaleGender.value = !isMaleGender.value;
    isFemaleGender.value = false;
  }

  void isSelectedFemaleGender() {
    isFemaleGender.value = !isFemaleGender.value;
    isMaleGender.value = false;
  }

  // Weight
  void incrementWeight() {
    if (weightValue.value == 250) {
      weightValue.value = 250;
    } else {
      weightValue.value++;
    }
  }

  void decrementWeight() {
    if (weightValue.value == 30) {
      weightValue.value = 30;
    } else {
      weightValue.value--;
    }
  }

  // Age
  void incrementAge() {
    if (ageValue.value == 80) {
      ageValue.value = 80;
    } else {
      ageValue.value++;
    }
  }

  void decrementAge() {
    if (ageValue.value == 15) {
      ageValue.value = 15;
    } else {
      ageValue.value--;
    }
  }

  // BMI Score
  void calculateBmiScore() {
    bmiScore.value =
        (weightValue.value / ((heightValue / 100) * (heightValue / 100)));
    if (bmiScore.value < 18.5) {
      bmiText.value = "Underweight";
      bmiTextColor.value = "red";
    } else if (bmiScore.value >= 18.5 && bmiScore.value < 24.9) {
      bmiText.value = "You're healty";
      bmiTextColor.value = "green";
    } else if (bmiScore.value >= 24.9 && bmiScore.value < 29.9) {
      bmiText.value = "Overweight";
      bmiTextColor.value = "red";
    } else if (bmiScore.value >= 29.9) {
      bmiText.value = "Obesity";
      bmiTextColor.value = "red";
    }
  }

  
}
