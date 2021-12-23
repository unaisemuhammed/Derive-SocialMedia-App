import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tripers/model/authentication/authenticationApi.dart';
import 'package:tripers/view/RegisterPages/signup_screen.dart';
import 'package:tripers/view/home_screen.dart';

class AuthenticationController extends GetxController {
  var firstPassword = '';
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> loginFormKey2 = GlobalKey<FormState>();
  final GlobalKey<FormState> loginFormKey3 = GlobalKey<FormState>();


  //Login controller
   final TextEditingController signInUserNameController =
      TextEditingController();
  final TextEditingController signInPasswordController =
      TextEditingController();

  //Registration Controller
  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  //SignUpValidation
  String? nameValidation(String value) {
    if (value.isEmpty || !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
      return 'Enter name correctly';
    } else {
      return null;
    }
  }

  String? usernameValidation(String value) {
    if (value.isEmpty) {
      return 'Enter name correctly';
    } else {
      return null;
    }
  }

  String? passwordValidation(String value) {
    firstPassword = value;
    if (value.isEmpty) {
      return "Enter a password";
    } else {
      return null;
    }
  }

  String? confirmPasswordValidation(String value) {
    if (value != firstPassword) {
      return "Password is different";
    } else if (value.isEmpty) {
      return 'Enter confirm password';
    } else {
      return null;
    }
  }

  String? phoneValidation(String value) {
    if (value.isEmpty ||
        value.length < 10 ||
        value.length > 10 ||
        !RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]+$')
            .hasMatch(value)) {
      return 'Enter valid PhoneNumber';
    } else {
      return null;
    }
  }

  String? emailValidation(String value) {
    if (value.isNotEmpty || value.isEmail) {
      return null;
    } else {
      return 'Enter valid PhoneNumber';
    }
  }

  void saveForm() {
    final isValid = loginFormKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    loginFormKey.currentState!.save();
  }

  void saveForm2() {
    final isValid2 = loginFormKey2.currentState!.validate();
    if (!isValid2) {
      return;
    }
    loginFormKey2.currentState!.save();
    Get.to(const SignUp());
  }


  void saveForm3() {
    final isValid2 = loginFormKey3.currentState!.validate();
    if (!isValid2) {
      return;
    }
    loginFormKey3.currentState!.save();
    Get.to(const SignUp());
  }

// //GoogleAuthentication
//   final googleSignIn = GoogleSignIn();
//   GoogleSignInAccount? _user;
//
//   GoogleSignInAccount? get user => _user;
//
//   var googleNameController;
//   var googleEmailController;
//   var googleProfilePhotoController;
//
//   Future googleLogIn() async {
//     try {
//       final googleUser = await googleSignIn.signIn();
//       if (googleUser == null) return;
//       _user = googleUser;
//
//       final googleAuth = await googleUser.authentication;
//
//       final credential = GoogleAuthProvider.credential(
//         accessToken: googleAuth.accessToken,
//         idToken: googleAuth.idToken,
//       );
//
//       await FirebaseAuth.instance.signInWithCredential(credential);
//     } catch (e) {
//       print(e.toString());
//     }
//     signUpAuthenticationUsingGoogle();
//     Get.to(const HomePage());
//     update();
//   }
//
//   //Google controller
//
//   void getGmailData() {
//     googleNameController = user?.displayName!;
//     googleEmailController = user?.email;
//     googleProfilePhotoController = user?.photoUrl;
//   }
//
//   //Logout
//   Future logout() async {
//     try {
//       await googleSignIn.disconnect();
//       FirebaseAuth.instance.signOut();
//     } catch (e) {
//       print(e.toString());
//     }
//   }

  //Clear Controller
  void clearController() {
    phoneNumberController.clear();
    fullNameController.clear();
    usernameController.clear();
    emailController.clear();
    passwordController.clear();
    confirmPasswordController.clear();
    signInUserNameController.clear();
    signInPasswordController.clear();
  }
}
