import 'package:e_commerce/screens/homePage.dart';
import 'package:e_commerce/screens/login.dart';
import 'package:e_commerce/screens/unknownPage.dart';
import 'package:e_commerce/screens/viewMore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      unknownRoute: GetPage(name: '/notfound', page: () => UnknownRoutePage()),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => LoginPage()),
        GetPage(
            name: '/second',
            page: () => HomePage(),
            transition: Transition.leftToRightWithFade),
        GetPage(
            name: '/cate',
            page: () => CategoriesPage(),
            transition: Transition.leftToRightWithFade),
        // GetPage(
        //     name: '/responsivetable',
        //     page: () => DataPage(),
        //     transition: Transition.leftToRightWithFade),
        // GetPage(
        //     name: '/customtable',
        //     page: () => CustomTable1(),
        //     transition: Transition.leftToRightWithFade),
        //     GetPage(
        //     name: '/sortabletable',
        //     page: () => SortableTable(),
        //     transition: Transition.leftToRightWithFade),
      ],
    );
  }
}
