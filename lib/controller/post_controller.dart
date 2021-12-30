import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tripers/colors.dart' as colors;
import 'package:tripers/model/post/post_api_function.dart';
import 'package:tripers/model/post/post_class_model.dart';

import '../instance.dart';

class PostController extends GetxController {
  String? logInUserId;


  final TextEditingController postTitleController = TextEditingController();
  final TextEditingController postDescriptionController = TextEditingController();

//Getting user id's
  Future<void> sharedPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    logInUserId = prefs.getString('id');
  }

//Add Post From Gallery
  int? currentId;
  bool isGallery = true;
  var onePostImage;
  var oneCarouselImage;
  List imageFile = [];
  List carouselImages = [];

//CropImage
  Future<File?> pickMediaWithCrop({
    required bool isGallery,
    required Future<File?> Function(File file) cropImage,
  }) async {
    final source = isGallery ? ImageSource.gallery : ImageSource.camera;
    final pickedFile = await ImagePicker().pickImage(source: source);

    if (pickedFile == null) return null;
    if (cropImage == null) {
      return File(pickedFile.path);
    } else {
      final file = File(pickedFile.path);
      return cropImage(file);
    }
  }

//WithOutCrop
  Future<File?> pickMedia({
    required bool isGallery,
  }) async {
    final source = isGallery ? ImageSource.gallery : ImageSource.camera;
    final pickedFile = await ImagePicker().pickImage(source: source);
    if (pickedFile == null) return null;
    final file = File(pickedFile.path);
    return file;
  }

//cropSquareFunction
  Future<File?> cropSquareImage(File imageFile) async {
    return await ImageCropper.cropImage(
        sourcePath: imageFile.path,
        aspectRatio: const CropAspectRatio(ratioX: 1, ratioY: .7),
        aspectRatioPresets: [CropAspectRatioPreset.original],
        compressFormat: ImageCompressFormat.jpg,
        compressQuality: 70,
        androidUiSettings: androidUiSettingLocked());
  }

  AndroidUiSettings androidUiSettingLocked() => const AndroidUiSettings(
      toolbarTitle: 'Crop Image', toolbarColor: colors.backGround);
}
