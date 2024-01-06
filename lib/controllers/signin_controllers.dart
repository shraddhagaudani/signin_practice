import 'package:get/get.dart';
import 'package:signin_practice/models/sigin_model.dart';

class SignInController extends GetxController{
  List<SignInModel> signinList = [];

  signinmethod(SignInModel val){
    signinList.add(val);
    update();
  }
}