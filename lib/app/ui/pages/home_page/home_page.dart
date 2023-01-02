
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../../controllers/home_controller.dart';


class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.amber,
      
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(statusBarColor: Colors.amber),
        elevation: 0,
        toolbarHeight: 0,
      ),
      body: Container(
        width: 100.w,
        height: 100.h,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.amber, Colors.white])
        ),
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                //alignment: Alignment.center,
                width: 100.w,
                height: 30.h,
                //color: Colors.red,
                child: Card(
                  color: const Color.fromARGB(255, 59, 49, 49),
                  elevation: 10,
                  shadowColor: Colors.grey,
                  child: Column(
                    children: [
                      Flexible(
                        flex: 5, child: Container(decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('assets/home/im_bmi.png'))),),
                      ),
                      Flexible(
                        flex: 1, child: Container(color: Colors.red,child: const Center(child: Text('Vücut Kitle Indeksi Hesaplama',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                //alignment: Alignment.center,
                width: 100.w,
                height: 30.h,
                //color: Colors.red,
                child: Card(
                  color: const Color.fromARGB(255, 59, 49, 49),
                  elevation: 10,
                  shadowColor: Colors.grey,
                  child: Column(
                    children: [
                      Flexible(
                        flex: 5, child: Container(decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('assets/home/im_graph.png'))),),
                      ),
                      Flexible(
                        flex: 1, child: Container(color: Colors.red,child: const Center(child: Text('Kilo Takip Çizelgesi',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                //alignment: Alignment.center,
                width: 100.w,
                height: 30.h,
                //color: Colors.red,
                child: Card(
                  color: const Color.fromARGB(255, 59, 49, 49),
                  elevation: 10,
                  shadowColor: Colors.grey,
                  child: Column(
                    children: [
                      Flexible(
                        flex: 5, child: Container(decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('assets/home/im_nitrution_schedule.png'))),),
                      ),
                      Flexible(
                        flex: 1, child: Container(color: Colors.red,child: const Center(child: Text('Beslenme Programı',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                //alignment: Alignment.center,
                width: 100.w,
                height: 30.h,
                //color: Colors.red,
                child: Card(
                  color: const Color.fromARGB(255, 59, 49, 49),
                  elevation: 10,
                  shadowColor: Colors.grey,
                  child: Column(
                    children: [
                      Flexible(
                        flex: 5, child: Container(decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('assets/home/im_excercise.png'))),),
                      ),
                      Flexible(
                        flex: 1, child: Container(color: Colors.red,child: const Center(child: Text('Antreman Programı',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                //alignment: Alignment.center,
                width: 100.w,
                height: 30.h,
                //color: Colors.red,
                child: Card(
                  color: const Color.fromARGB(255, 59, 49, 49),
                  elevation: 10,
                  shadowColor: Colors.grey,
                  child: Column(
                    children: [
                      Flexible(
                        flex: 5, child: Container(decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('assets/home/im_fasting.png'))),),
                      ),
                      Flexible(
                        flex: 1, child: Container(color: Colors.red,child: const Center(child: Text('Aralıklı Oruç Programı',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
  