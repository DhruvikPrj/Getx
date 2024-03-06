import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Localization/languages.dart';
// import 'package:getx/StateManagement/getX_List/fav_list.dart';
import 'package:getx/StateManagement/image_picker/show_image.dart';
//import 'package:getx/Localization/localization.dart';
// import 'package:getx/StateManagement/count.dart';
// import 'package:getx/StateManagement/opacity_with_slider/opacity.dart';
// import 'package:getx/StateManagement/toggle_button.dart/toggle_button.dart';
// import 'package:getx/Navigation_GetX/navigator.dart';
// import 'package:getx/Navigation_GetX/screen1.dart';
// import 'package:getx/Navigation_GetX/screen2.dart';
// import 'package:getx/Navigation_GetX/screen3.dart';
// impor t 'package:getx/Utilities/height_WIdth/height_Width.dart';
//import 'package:getx/home_screen.dart';
//import 'package:getx/dialog.dart';
//import 'package:getx/theme.dart';
//import 'package:getx/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      translations: Languages(),
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),
      home: const ShowImage(),
      // getPages: [
      //   GetPage(name: '/', page: () => const GetXNavigator()),
      //   GetPage(
      //       name: '/Screen 1',
      //       page: () => Screen1(
      //             name: 'Raju',
      //           )),
      //   GetPage(name: '/Screen 2', page: () => const Screen2()),
      //   GetPage(name: '/Screen 3', page: () => const Screen3()),
      //],
    );
  }
}
