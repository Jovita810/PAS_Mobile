import 'package:flutter/material.dart';
import 'package:jovita_pas_mobile/routes.dart';
import 'package:jovita_pas_mobile/pages/login_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "My Learning App",
      //initialRoute: Routes.main_menu,
      initialRoute: Routes.login,
      getPages: Routes.myPages,
    );
  }
}