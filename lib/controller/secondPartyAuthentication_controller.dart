import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tripers/instance.dart';
import 'package:tripers/model/authentication/authenticationApi.dart';
import 'package:tripers/view/RegisterPages/signin_screen.dart';
import 'package:tripers/view/home_screen.dart';

import '../widgets.dart';

class Authentication extends GetxController {
  var googleNameController = '';
  var googleEmailController = '';
  var googleProfilePhotoController = '';

  // GoogleAuthentication
  final googleSignIn = GoogleSignIn();
  GoogleSignInAccount? _user;

  GoogleSignInAccount? get user => _user;

  //Register with google
  Future googleRegister() async {
    try {
      final googleUser = await googleSignIn.signIn();
      if (googleUser == null) return;
      _user = googleUser;
      final googleAuth = await googleUser.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      await FirebaseAuth.instance.signInWithCredential(credential);
    } catch (e) {
      print(e.toString());
    }
    authenticationGoogle.getGmailData();
    signUpAuthenticationUsingGoogle();
    logout();
    update();
  }

  //Sign In with google
  Future googleLogin() async {
    try {
      final googleUser = await googleSignIn.signIn();
      if (googleUser == null) return;
      _user = googleUser;
      final googleAuth = await googleUser.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      await FirebaseAuth.instance.signInWithCredential(credential);
    } catch (e) {
      print(e.toString());
    }
    var useName = authenticationGoogle.user?.displayName.toString();
    authenticationController.signInUserNameController.text = useName!;
    authenticationController.signInPasswordController.text = useName;
    loginAuthenticationUsingGoogle();
    authenticationController.clearController();
    update();
  }

  //Logout
  Future logout() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    try {
      await googleSignIn.disconnect();
      FirebaseAuth.instance.signOut();
    } catch (e) {
      print(e.toString());
    }
    prefs.clear();
  }

  Future<void> getGmailData() async {
    var email = user?.email;
    var userName = user?.displayName;
    var userProfile = user?.photoUrl;
    authenticationController.fullNameController.text =
        userName.toString().toUpperCase();
    authenticationController.emailController.text = email.toString();
    authenticationController.usernameController.text = userName.toString();
    authenticationController.passwordController.text = userName.toString();
    authenticationController.confirmPasswordController.text =
        userName.toString();
  }

// SignOut google

//Sign in with facebook

//Sign out facebook

}
