import 'dart:ui';
import 'package:get/get.dart';
import 'package:story_view/controller/story_controller.dart';

class TotalController extends GetxController {
  final controller = StoryController();
  var activeIndex = 0;
  bool isStatusLoaded=false;
  late String text='Follow';
   Color? blueButton;
  int followNum=1;




}
