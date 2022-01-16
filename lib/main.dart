import 'package:flutter/material.dart';
import 'package:flutter_project_ui/screens/home_screen.dart';
import 'package:flutter_project_ui/screens/last_screen.dart';
import 'package:flutter_project_ui/screens/num_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'app_language/translations.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      builder: () => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/homeScreen',
        translations: TranslationApp(),
        locale: Locale(Get.deviceLocale.languageCode),
        routes: {
          '/homeScreen': (context) => HomeScreen(),
          '/NumScreen': (context) => NumScreen(),
          '/LastScreen': (context) => LastScreen(),
        },
      ),
    );
  }
}
