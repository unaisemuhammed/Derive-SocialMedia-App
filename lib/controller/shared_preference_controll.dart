import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreference extends GetxController{
  bool value=false;
  @override
  void onInit() {
    sharedPreference();
    super.onInit();
  }
  void sharedPreference() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token=prefs.getString('token');
if(token!=null){
  value=true;
}
update();
}
}
