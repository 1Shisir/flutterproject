import 'package:flutter/material.dart';
import 'package:flutterproject/src/repository/authentication_repository/authentication_repository.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  //TextFiled Controller to get data from TextField
  final email = TextEditingController();
  final password = TextEditingController();
  final fullname = TextEditingController();
  final phoneNo = TextEditingController();

//function will be called from the design
  void registerUser(String email, String password) {
    AuthenticationRepository.instance
        .createUserwithEmailAndPassword(email, password);
  }
}
