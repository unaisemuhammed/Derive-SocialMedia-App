import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tripers/colors.dart'as colors;

class PostController extends GetxController {
//Add Post From Gallery
  bool isGallery = true;
  List<File>imageFiles=[];

  Future<File?> pickMedia({
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

//cropSquareFunction
  Future<File?> cropSquareImage(File imageFile) async {
   return await ImageCropper.cropImage(
      sourcePath: imageFile.path,
      aspectRatio: const CropAspectRatio(ratioX: 1, ratioY: .7),
      aspectRatioPresets: [CropAspectRatioPreset.square],
   compressFormat: ImageCompressFormat.jpg,compressQuality:70,androidUiSettings:androidUiSettingLocked() );



  }
  AndroidUiSettings androidUiSettingLocked()=>AndroidUiSettings(
    toolbarTitle: 'Crop Image',
    toolbarColor: colors.backGround
  );

}
