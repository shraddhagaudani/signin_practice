import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:signin_practice/controllers/signin_controllers.dart';
import 'package:signin_practice/models/sigin_model.dart';

class Signin_page extends StatefulWidget {
  const Signin_page({super.key});

  @override
  State<Signin_page> createState() => _Signin_pageState();
}

class _Signin_pageState extends State<Signin_page> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    SignInController signInController = Get.put(SignInController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Signin Page"),
      ),
      body: Form(
        key: formkey,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              TextFormField(
                controller: emailController,
                decoration: const InputDecoration(
                  hintText: "Enter email...",
                  label: Text("Email"),
                  border: OutlineInputBorder(),
                ),
                validator: (val) {
                  if (val!.isEmpty) {
                    return "Please enter email...";
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: passController,
                decoration: const InputDecoration(
                  hintText: "Enter password...",
                  label: Text("Password"),
                  border: OutlineInputBorder(),
                ),
                validator: (val) {
                  if (val!.isEmpty) {
                    return "Please enter password...";
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  if (formkey.currentState!.validate()) {
                    formkey.currentState!.save();

                    SignInModel signinmodel = SignInModel(
                      email: emailController.text,
                      password: passController.text,
                    );
                    signInController.signinmethod(signinmodel);

                    Get.toNamed('/home_page');
                  }
                  setState(() {
                    emailController.clear();
                    passController.clear();
                  });
                },
                child: const Text("Sign in"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
