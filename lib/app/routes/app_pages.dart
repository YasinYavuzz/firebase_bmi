
import 'package:firebase_bmi/app/bindings/home_binding.dart';
import 'package:firebase_bmi/app/bindings/login_binding.dart';
import 'package:firebase_bmi/app/bindings/signup_binding.dart';
import 'package:firebase_bmi/app/bindings/splash_binding.dart';
import 'package:firebase_bmi/app/ui/pages/home_page/home_page.dart';
import 'package:firebase_bmi/app/ui/pages/login_page/login_page.dart';
import 'package:firebase_bmi/app/ui/pages/signup_page/signup_page.dart';
import 'package:firebase_bmi/app/ui/pages/splash_page/splash_page.dart';
import 'package:get/get.dart';

part 'app_routes.dart';
class AppPages{
  static const String INITIAL_PAGES = AppRoutes.SPLASHPAGE;
  static final routes = [
    GetPage(name: AppRoutes.SPLASHPAGE, page: () => SplashPage(), binding: SplashBinding()),
    GetPage(name: AppRoutes.LOGINPAGE, page: () => LoginPage(), binding: LoginBinding()),
    GetPage(name: AppRoutes.SIGNUPPAGE, page: () => SignupPage(), binding: SignupBinding()),
    GetPage(name: AppRoutes.HOMEPAGE, page: () => HomePage(), binding: HomeBinding())
  ];
}