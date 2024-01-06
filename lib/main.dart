import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signin_practice/views/screens/home_page.dart';
import 'package:signin_practice/views/screens/signin_page.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/signin_page',
      getPages: [
        GetPage(name: '/', page: () => const Home_page()),
        GetPage(name: '/signin_page', page: () => const Signin_page()),
      ],
    ),
  );
}
