import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:tripers/controller/authentication_controller.dart';
import 'package:tripers/controller/secondPartyAuthentication_controller.dart';
import 'package:tripers/controller/post_controller.dart';
import 'package:tripers/model/post/post_api_function.dart';
import 'controller/getx_controller.dart';
import 'controller/shared_preference_controll.dart';

TotalController totalController = Get.put(TotalController());
AuthenticationController authenticationController =
    Get.put(AuthenticationController());
PostController postController = Get.put(PostController());
Authentication authenticationGoogle = Get.put(Authentication());
PostApi postApi = Get.put(PostApi());
SharedPreference sharedPreferenceController = Get.put(SharedPreference());
