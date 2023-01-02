import 'package:firebase_bmi/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'app/data/services/services_initialize.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  ServicesInitialize.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (p0, p1, p2) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: AppPages.INITIAL_PAGES,
        getPages: AppPages.routes,
      ),
    );
  }
}
