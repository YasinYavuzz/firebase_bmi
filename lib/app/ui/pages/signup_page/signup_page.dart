import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../../controllers/signup_controller.dart';

class SignupPage extends GetView<SignupController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      //backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        // title: Text('LoginPagePage'),
        systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.amber),
        elevation: 0,
        toolbarHeight: 0,
        backgroundColor: Colors.amberAccent,
        //primary: Icon(Icons.add),
      ),
      body: SingleChildScrollView(
        reverse: true,
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.amber, Colors.white])),
          child: SafeArea(
              child: Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: 90.w,
              height: 80.h,
              // color: Colors.white,

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 1.h,
                  ),
                  Container(
                    width: 8.w,
                    height: 6.h,
                    // color: Colors.green,
                    child: GestureDetector(
                        onTap: () => Get.back(),
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 5.h,
                          color: Colors.white,
                        )),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Text(
                    'SIGN UP',
                    style: GoogleFonts.inter(
                        color: Colors.white,
                        fontSize: 4.h,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Obx(() => Center(
                          child: Text(
                        controller.returnKullaniciAdiMessage.value,
                        style: const TextStyle(
                            color: Colors.red,
                            fontSize: 15,
                            fontWeight: FontWeight.w700),
                      ))),
                  SizedBox(
                    height: 1.h,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 100.w,
                    height: 10.h,
                    decoration: BoxDecoration(
                      border: Border.symmetric(
                          horizontal:
                              BorderSide(color: Colors.grey, width: .2.h),
                          vertical:
                              BorderSide(color: Colors.grey, width: .2.h)),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 2.h, vertical: 1.9.h),
                      child: TextFormField(
                        controller: controller.kullanici_adi,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.person),
                            hintText: 'Kullan??c?? Ad??',
                            hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 2.5.h,
                                fontWeight: FontWeight.bold),
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Obx(() => Center(
                          child: Text(
                        controller.returnEmailMessage.value,
                        style: const TextStyle(
                            color: Colors.red,
                            fontSize: 15,
                            fontWeight: FontWeight.w700),
                      ))),
                  SizedBox(
                    height: 1.h,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 100.w,
                    height: 10.h,
                    decoration: BoxDecoration(
                      border: Border.symmetric(
                          horizontal:
                              BorderSide(color: Colors.grey, width: .2.h),
                          vertical:
                              BorderSide(color: Colors.grey, width: .2.h)),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 2.h),
                      child: TextFormField(
                        controller: controller.email,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email),
                            hintText: 'E-mail',
                            hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 2.5.h,
                                fontWeight: FontWeight.bold),
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Obx(() => Center(
                          child: Text(
                        controller.returnPasswordMessage.value,
                        style: const TextStyle(
                            color: Colors.red,
                            fontSize: 15,
                            fontWeight: FontWeight.w700),
                      ))),
                  SizedBox(
                    height: 1.h,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 100.w,
                    height: 10.h,
                    decoration: BoxDecoration(
                      border: Border.symmetric(
                          horizontal:
                              BorderSide(color: Colors.grey, width: .2.h),
                          vertical:
                              BorderSide(color: Colors.grey, width: .2.h)),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 2.h),
                      child: Obx(() => TextFormField(
                        controller: controller.password,
                            obscureText: controller.passwordVisible.value,
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.password),
                                suffixIcon: controller.passwordVisible.value
                                    ? IconButton(
                                        onPressed: () =>
                                            controller.changePasswordVisible(),
                                        icon: const Icon(FontAwesomeIcons.eye))
                                    : IconButton(
                                        onPressed: () =>
                                            controller.changePasswordVisible(),
                                        icon: const Icon(
                                            FontAwesomeIcons.eyeSlash)),
                                hintText: 'Password',
                                hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 2.5.h,
                                    fontWeight: FontWeight.bold),
                                border: InputBorder.none),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Obx(() => Center(
                          child: Text(
                        controller.returnCorrectPasswordMessage.value,
                        style: const TextStyle(
                            color: Colors.red,
                            fontSize: 15,
                            fontWeight: FontWeight.w700),
                      ))),
                  SizedBox(
                    height: 1.h,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 100.w,
                    height: 10.h,
                    decoration: BoxDecoration(
                      border: Border.symmetric(
                          horizontal:
                              BorderSide(color: Colors.grey, width: .2.h),
                          vertical:
                              BorderSide(color: Colors.grey, width: .2.h)),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 2.h),
                      child: Obx(() => TextFormField(
                        controller: controller.correctPassword,
                            obscureText:
                                controller.correctPasswordVisible.value,
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.password),
                                suffixIcon: controller
                                        .correctPasswordVisible.value
                                    ? IconButton(
                                        onPressed: () => controller
                                            .changecorrectPasswordVisible(),
                                        icon: const Icon(FontAwesomeIcons.eye))
                                    : IconButton(
                                        onPressed: () => controller
                                            .changecorrectPasswordVisible(),
                                        icon: const Icon(
                                            FontAwesomeIcons.eyeSlash)),
                                hintText: 'Correct Password',
                                hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 2.5.h,
                                    fontWeight: FontWeight.bold),
                                border: InputBorder.none),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: InkWell(
                      onTap: () => controller.createUser(),
                      child: Container(
                        width: 40.w,
                        height: 7.h,
                        decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(40),
                            boxShadow: const [
                              BoxShadow(
                                  offset: Offset(0, 5),
                                  blurRadius: 10,
                                  spreadRadius: 0,
                                  color: Colors.grey)
                            ]),
                        child: Center(
                          child: Text(
                            'SIGN UP',
                            style: TextStyle(
                                color: Colors.grey.shade600,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )),
        ),
      ),
    );
  }
}
