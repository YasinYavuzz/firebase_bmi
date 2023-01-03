
import 'package:get/get.dart';
import '../controllers/bmicalculator_controller.dart';


class BmiCalculatorBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BmiCalculatorController>(() => BmiCalculatorController());
  }
}