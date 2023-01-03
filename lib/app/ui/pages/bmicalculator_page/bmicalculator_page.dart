import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../../controllers/bmicalculator_controller.dart';

class BmiCalculatorPage extends GetView<BmiCalculatorController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: false,

      backgroundColor: Color(0xff1D1D1D),
      appBar: AppBar(
        // title: Text('LoginPagePage'),
        systemOverlayStyle:
            SystemUiOverlayStyle(statusBarColor: Color(0xff1D1D1D)),
        elevation: 0,
        toolbarHeight: 0,
        backgroundColor: Colors.amberAccent,
        //primary: Icon(Icons.add),
      ),
      body: SingleChildScrollView(
        reverse: true,
        child: SafeArea(
            child: Align(
          alignment: Alignment.topCenter,
          child: Container(
            width: 90.w,
            height: 100.h,
            // color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 3.h,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Obx(() => GestureDetector(
                      onTap: () => controller.isSelectedMaleGender(),
                      child: Container(
                        width: 40.w,
                        height: 23.h,
                        child: Card(
                          elevation: 5,
                          color: controller.isMaleGender.value ? Color(0xff464646)  : Color(0xff2C2C2C),
                          child: Column(
                            children: [
                              Flexible(
                                  flex: 5,
                                  child: Center(
                                    child: Image.asset(
                                      'assets/bmi_calculator/male.png',
                                      color: Colors.white,
                                      scale: .4.h,
                                    ),
                                  )),
                              Flexible(
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      'Male',
                                      style: GoogleFonts.inter(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ))
                            ],
                          ),
                        ),
                      ),
                    ),),
                    Obx(() => GestureDetector(
                      onTap: () => controller.isSelectedFemaleGender(),
                      child: Container(
                        width: 40.w,
                        height: 23.h,
                        child: Card(
                          elevation: 5,
                          color: controller.isFemaleGender.value ? Color(0xff464646)  : Color(0xff2C2C2C),
                          child: Column(
                            children: [
                              Flexible(
                                  flex: 5,
                                  child: Center(
                                    child: Image.asset(
                                      'assets/bmi_calculator/female.png',
                                      color: Colors.white,
                                      scale: .4.h,
                                    ),
                                  )),
                              Flexible(
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      'Female',
                                      style: GoogleFonts.inter(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ))
                            ],
                          ),
                        ),
                      ),
                    ))
                  ],
                ),
                SizedBox(
                  height: 2.h,
                ),
                Container(
                  width: 100.w,
                  height: 25.h,
                  child: Card(
                    elevation: 5,
                    color: Color(0xff2C2C2C),
                    child: Column(
                      children: [
                        Flexible(
                            flex: 1,
                            child: Center(
                              child: Text(
                                'Height',
                                style: GoogleFonts.inter(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              ),
                            )),
                        Flexible(
                            flex: 1,
                            child: Center(
                              child: RichText(
                                text: TextSpan(
                                  //text: 'Hello ',
                                  //style: DefaultTextStyle.of(context).style,
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: '195',
                                        style: GoogleFonts.inter(
                                            color: Colors.white,
                                            fontSize: 55,
                                            fontWeight: FontWeight.w600)),
                                    TextSpan(
                                        text: ' Cm',
                                        style: GoogleFonts.inter(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w400)),
                                  ],
                                ),
                              ),
                            )),
                        Flexible(
                            flex: 1,
                            child: Slider(
                              activeColor: Colors.red,
                              inactiveColor: Colors.black,
                              thumbColor: Colors.white,
                              min: controller.minHeight.value,
                              max: 250.0,
                              value: 50,
                              onChanged: (value) {},
                            ))
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 40.w,
                      height: 23.h,
                      child: Card(
                        elevation: 5,
                        color: Color(0xff2C2C2C),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 1.h,
                            ),
                            Flexible(
                                flex: 1,
                                child: Center(
                                  child: Text(
                                    'Weight',
                                    style: GoogleFonts.inter(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                )),
                            Flexible(
                                flex: 3,
                                child: Center(
                                  child: Text(
                                    '55',
                                    style: GoogleFonts.inter(
                                        color: Colors.white,
                                        fontSize: 50,
                                        fontWeight: FontWeight.w600),
                                  ),
                                )),
                            Flexible(
                                flex: 2,
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 5.h,
                                        height: 5.h,
                                        decoration: const BoxDecoration(
                                            color: Color(0xff2C2C2C),
                                            shape: BoxShape.circle,
                                            border: Border.fromBorderSide(
                                                BorderSide(
                                                    color: Colors.white,
                                                    width: 3))),
                                        child: Center(
                                            child: Text(
                                          '-',
                                          style: GoogleFonts.inter(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600),
                                        )),
                                      ),
                                      SizedBox(
                                        width: 5.w,
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        width: 5.h,
                                        height: 5.h,
                                        decoration: const BoxDecoration(
                                            color: Color(0xff2C2C2C),
                                            shape: BoxShape.circle,
                                            border: Border.fromBorderSide(
                                                BorderSide(
                                                    color: Colors.white,
                                                    width: 3))),
                                        child: Center(
                                            child: Text(
                                          '+',
                                          style: GoogleFonts.inter(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500),
                                        )),
                                      ),
                                    ],
                                  ),
                                )),
                            SizedBox(
                              height: 1.h,
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 40.w,
                      height: 23.h,
                      child: Card(
                        elevation: 5,
                        color: Color(0xff2C2C2C),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 1.h,
                            ),
                            Flexible(
                                flex: 1,
                                child: Center(
                                  child: Text(
                                    'Age',
                                    style: GoogleFonts.inter(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                )),
                            Flexible(
                                flex: 3,
                                child: Center(
                                  child: Text(
                                    '55',
                                    style: GoogleFonts.inter(
                                        color: Colors.white,
                                        fontSize: 50,
                                        fontWeight: FontWeight.w600),
                                  ),
                                )),
                            Flexible(
                                flex: 2,
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 5.h,
                                        height: 5.h,
                                        decoration: const BoxDecoration(
                                            color: Color(0xff2C2C2C),
                                            shape: BoxShape.circle,
                                            border: Border.fromBorderSide(
                                                BorderSide(
                                                    color: Colors.white,
                                                    width: 3))),
                                        child: Center(
                                            child: Text(
                                          '-',
                                          style: GoogleFonts.inter(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600),
                                        )),
                                      ),
                                      SizedBox(
                                        width: 5.w,
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        width: 5.h,
                                        height: 5.h,
                                        decoration: const BoxDecoration(
                                            color: Color(0xff2C2C2C),
                                            shape: BoxShape.circle,
                                            border: Border.fromBorderSide(
                                                BorderSide(
                                                    color: Colors.white,
                                                    width: 3))),
                                        child: Center(
                                            child: Text(
                                          '+',
                                          style: GoogleFonts.inter(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500),
                                        )),
                                      ),
                                    ],
                                  ),
                                )),
                            SizedBox(
                              height: 1.h,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 2.h,
                ),
                Container(
                  width: 100.w,
                  height: 8.h,
                  child: Card(
                    elevation: 5,
                    color: Color(0xffFE4C4C),
                    child: Center(child: Text('CALCULATE YOUR BMI',style: GoogleFonts.inter(color: Colors.white,fontSize: 21,fontWeight: FontWeight.w700),),),
                  ),
                )
              ],
            ),
          ),
        )),
      ),
    );
  }
}
