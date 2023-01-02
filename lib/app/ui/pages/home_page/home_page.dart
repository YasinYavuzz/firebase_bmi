
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../../../controllers/home_controller.dart';


class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.amber,
      drawer: Drawer(
        child: Icon(Icons.double_arrow_sharp),
        backgroundColor: Colors.black,
      ),
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(statusBarColor: Colors.black),
        elevation: 0,
        toolbarHeight: 0,
      ),
      body: Column(
        
      ),
    );
  }
}
  