import 'package:firebase_bmi/app/routes/app_pages.dart';
import 'package:firebase_bmi/app/ui/theme/splash_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../../controllers/splash_controller.dart';

class SplashPage extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: SplashTheme.BACKGROUNDCOLOR,
        appBar: AppBar(
          toolbarHeight: 0,
          elevation: 0,
          systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarColor: Colors.amber),
        ),
        body: Column(
          children: [
            Container(
              width: 100.w,
              height: 60.h,
              child: Image.asset(
                SplashTheme.LOGINIMAGE,
                fit: BoxFit.cover,
              ),
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 500,
                      spreadRadius: 50,
                      color: Colors.amberAccent)
                ],
              ),
            ),
            Container(
              width: 100.w,
              height: 36.h,
              //color: Colors.red,
              child: Column(
                children: [
                  SizedBox(
                    height: 3.h,
                  ),
                  Text(
                    SplashTheme.APPNAMETEXT,
                    style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  InkWell(
                    onTap: () => Get.toNamed(AppRoutes.LOGINPAGE),
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
                          child: Center(child: Text(SplashTheme.LOGINBUTTONTEXT,style: TextStyle(color: Colors.grey.shade600,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),),),
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  InkWell(
                    onTap: () => Get.toNamed(AppRoutes.SIGNUPPAGE),
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
                          child: Center(child: Text(SplashTheme.SIGNUPBUTTONTEXT,style: TextStyle(color: Colors.grey.shade600,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),),),
                    ),
                  ),
                  SizedBox(height: 3.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(SplashTheme.ICGOOGLE,scale: 0.3.w,),
                      SizedBox(width: 5.w,),
                      Image.asset(SplashTheme.ICFACEBOOK,scale: .3.w,),
                      SizedBox(width: 5.w,),
                      Image.asset(SplashTheme.ICWINDOWS,scale: .3.w,),
                    ],
                  )
                ],
              ),
            )
          ],
        ));
  }
}
