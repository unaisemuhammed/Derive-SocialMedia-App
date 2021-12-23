import 'dart:convert';
import 'dart:io';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tripers/api.dart';
import 'package:tripers/instance.dart';
import 'package:tripers/view/RegisterPages/signin_screen.dart';
import 'package:tripers/view/home_screen.dart';

import '../../widgets.dart';


//SignIn user manually
Future<Object?> loginAuthentication() async {
  try {
    final response = await http.post(
      Uri.parse(loginUrl),
      body: {
        "username": authenticationController.signInUserNameController.text,
        "password": authenticationController.signInPasswordController.text,
      },
    );
    switch (response.statusCode) {
      case 200:
        final responseString = jsonDecode(response.body);
        SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setString('token', responseString["access"]);
        print(prefs.getString('token'));
        return Get.offAll(const HomePage());
      case 400:
        throw BadRequestException(response.body.toString());
      case 401:
      case 403:
        throw UnauthorisedException(response.body.toString());
      case 500:
      default:
        throw FetchDataException(
            'Error occurred while Communication with Server with StatusCode: ${response.statusCode}');
    }
  } on SocketException {
    throw FetchDataException("No Internet connection");
  }on BadRequestException {
    return alertBox(
        content:
        'User name and Password in invalid');
  }
}

//Registration function using manually
Future<void> signUpAuthentication() async {
  try {
    final response = await http.post(
      Uri.parse(signupUrl),
      body: {
        "fullname": authenticationController.fullNameController.text,
        "email": authenticationController.emailController.text,
        "username": authenticationController.usernameController.text,
        "phone": authenticationController.phoneNumberController.text,
        "password": authenticationController.passwordController.text,
        "password2": authenticationController.confirmPasswordController.text,
      },
    );
    if (response.statusCode == 200) {
      Get.offAll(const SignIn());
      final responseString = response.body;
      return jsonDecode(responseString);
    } else if (response.statusCode == 400) {
      throw BadRequestException(response.body.toString());
    } else if (response.statusCode == 401) {
      throw UnauthorisedException(response.body.toString());
    } else if (response.statusCode == 403) {
      throw UnauthorisedException(response.body.toString());
    } else if (response.statusCode == 500) {
      throw FetchDataException(
          'Error occured while Communication with Server with StatusCode: ${response.statusCode}');
    } else {
      return;
    }
  } on SocketException {
    return alertBox(
        content:
            'The username or password that you\'ve entered is incorrect.Please try again.');
  }on BadRequestException {
    return alertBox(
        content:
        'User already exist');
  }
  }

//Login Signup with google
Future<Object?> loginAuthenticationUsingGoogle() async {
  try {
    final response = await http.post(
      Uri.parse(loginUrl),
      body: {
        "username": authenticationController.signInUserNameController.text,
        "password": authenticationController.signInPasswordController.text,
      },
    );
    switch (response.statusCode) {
      case 200:
        final responseString = jsonDecode(response.body);
        SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setString('token', responseString["access"]);
        return Get.offAll(const HomePage());
      case 400:
        throw BadRequestException(response.body.toString());
      case 401: throw BadRequestException(response.body.toString());
      case 403:
        throw UnauthorisedException(response.body.toString());
      case 500:throw BadRequestException(response.body.toString());
      default:
        throw FetchDataException(
            'Error occurred while Communication with Server with StatusCode: ${response.statusCode}');
    }
  } on SocketException {
    throw FetchDataException("No Internet connection");
  }on BadRequestException {
    authenticationGoogle.logout();
    return alertBox(
        content:
        'This account isn\'t Registered');
  }on UnauthorisedException{
    authenticationGoogle.logout();
    return alertBox(
        content:
        'This account isn\'t Registered');
  }
}


//Registration using google
Future<void> signUpAuthenticationUsingGoogle() async {
  try {
    final response = await http.post(
      Uri.parse(signupUrl),
      body: {
        "fullname": authenticationController.fullNameController.text,
        "email": authenticationController.emailController.text,
        "username": authenticationController.usernameController.text,
        "phone": authenticationController.phoneNumberController.text,
        "password": authenticationController.passwordController.text,
        "password2": authenticationController.confirmPasswordController.text,
      },
    );
    if (response.statusCode == 200) {
      Get.offAll(const SignIn());
      final responseString = response.body;
      return jsonDecode(responseString);
    } else if (response.statusCode == 400) {
      throw BadRequestException(response.body.toString());
    } else if (response.statusCode == 401) {
      throw UnauthorisedException(response.body.toString());
    } else if (response.statusCode == 403) {
      throw UnauthorisedException(response.body.toString());
    } else if (response.statusCode == 500) {
      throw FetchDataException(
          'Error occured while Communication with Server with StatusCode: ${response.statusCode}');
    } else {
      return;
    }
  } on SocketException {
    return alertBox(
        content:
            'The username or password that you\'ve entered is incorrect.Please try again.');
  }on BadRequestException {
    return alertBox(
        content:
        'User already exist');
  }
}


//class for exception result

class CustomException implements Exception {
  final _message;
  final _prefix;

  CustomException([this._message, this._prefix]);

  String toString() {
    return "$_prefix$_message";
  }
}

class FetchDataException extends CustomException {
  FetchDataException([String? message])
      : super(message, "Error During Communication: ");
}

class BadRequestException extends CustomException {
  BadRequestException([message]) : super(message, "Invalid Request: ");
}

class UnauthorisedException extends CustomException {
  UnauthorisedException([message]) : super(message, "Unauthorised: ");
}

class InvalidInputException extends CustomException {
  InvalidInputException([String? message]) : super(message, "Invalid Input: ");
}
