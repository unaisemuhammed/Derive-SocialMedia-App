import 'dart:ui';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:story_view/controller/story_controller.dart';

class TotalController extends GetxController {
  final controller = StoryController();
  var activeIndex = 0;
  bool isStatusLoaded = false;
  late String text = 'Follow';
  Color? blueButton;
  int followNum = 1;

  String? token;
  String? userName;
  String? fullName;
  String? email;
  String? phone;
  String? id;

  Future<void> sharedPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    token = prefs.getString('token');
    userName = prefs.getString('userName');
    fullName = prefs.getString('fullName');
    email = prefs.getString('email');
    phone = prefs.getString('phone');
    id = prefs.getString('id');
  }
}
