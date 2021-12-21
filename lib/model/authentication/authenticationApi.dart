import 'dart:convert';
import 'dart:io';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:tripers/api.dart';
import 'package:tripers/instance.dart';
import 'package:tripers/view/RegisterPages/signin_screen.dart';
import 'package:tripers/view/home_screen.dart';

import '../../widgets.dart';

//Registration function
Future<void> signUpAuthentication() async {
  final response = await http.post(Uri.parse(signupUrl), body: {
    "fullname": authenticationController.fullNameController.text==''?authenticationController.googleNameController.toString(): authenticationController.fullNameController.text,
    "email":  authenticationController.emailController.text==''?authenticationController.googleEmailController.toString(): authenticationController.emailController.text,
    "username":  authenticationController.usernameController.text==''?authenticationController.googleNameController.toString().toLowerCase().trim().replaceAll(RegExp(r"\s+"), ""):authenticationController.usernameController.text,
    "phone": '8560253645',
    "password": '12301230',
    "password2": '12301230',
  });
  try {
    if (response.statusCode == 200) {
      // Get.back();
      print(authenticationController.googleNameController);
      final responseString = response.body;
      return jsonDecode(responseString);

    } else {
      return;
    }
  } on SocketException {
    return alertBox();
  }
}

//Login Signup

Future<Object?> loginAuthentication() async {
  final response = await http.post(
    Uri.parse(loginUrl),
    body: {
      "username": authenticationController.signInUserNameController.text,
      "password": authenticationController.signInPasswordController.text,
    },
  );
  if (response.statusCode == 200) {
    return Get.to(const HomePage());
  } else {
    return alertBox();
  }
}
