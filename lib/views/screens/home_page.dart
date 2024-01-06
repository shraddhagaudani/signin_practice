import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:signin_practice/controllers/signin_controllers.dart';

class Home_page extends StatefulWidget {
  const Home_page({super.key});

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  @override
  Widget build(BuildContext context) {
    SignInController signInController = Get.put(SignInController());
    return Scaffold(
        appBar: AppBar(
          title: const Text("Home Page"),
        ),
        body: ListView.builder(
            itemCount: signInController.signinList.length,
            itemBuilder: (context, i) {
              return ListTile(
                title: Text(signInController.signinList[i].email),
                subtitle: Text(signInController.signinList[i].password),
              );
            }));
  }
}
