import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tripers/api.dart';
import 'package:http_parser/http_parser.dart';
import 'package:tripers/instance.dart';
import 'package:tripers/model/post/post_class_model.dart';

class PostApi extends GetxController {
  @override
  void onInit() {
    fetchPost();
    update();
    super.onInit();
  }

  //Post Method of posts
  uploadImage(File file) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    //create multipart request for POST or PATCH method
    var request = http.MultipartRequest("POST", Uri.parse(postPosts));
    // add text fields
    request.fields["title"] = postController.postTitleController.text;
    request.fields["description"] =
        postController.postDescriptionController.text;
    request.fields["author"] = prefs.getString('id')!;
    Map<String, String> requestHeaders = {
      'Authorization': 'Bearer ${prefs.getString('token')}',
      'Content-Type': 'application/json',
      'Content_Disposition': 'attachment:filename=${file.path}'
    };
    request.files.add(
      http.MultipartFile(
        'post_image',
        file.readAsBytes().asStream(),
        file.lengthSync(),
        filename: file.path,
        contentType: MediaType('image', 'jpg'),
      ),
    );
    request.headers.addAll(requestHeaders);
    print("request: " + request.toString());
    request.send().then((response) {
      if (response.statusCode == 200) print("Uploaded!");
    });
  }

  //Get Method of Posts
  Future<List<PostGet>> fetchPost() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final response = await http.get(Uri.parse(getPost), headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer  ${prefs.getString('token')}',
    });

    if (response.statusCode == 200) {
      update();
      final parsed = json.decode(response.body).cast<Map<String, dynamic>>();
      return parsed
          .map<PostGet>((json) => PostGet.fromJson(json))
          .toList()
          .reversed
          .toList();
    } else if (response.statusCode == 400) {
      throw const CircularProgressIndicator();
    } else {
      throw Exception('Failed to load album');
    }
  }

  //Delete Method of Posts
  Future<PostGet> deletePost(String id) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final http.Response response = await http.delete(
      Uri.parse('https://social-network3.herokuapp.com/post/$id/'),
      headers: {
        'Authorization': 'Bearer  ${prefs.getString('token')}',
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );

    if (response.statusCode == 204) {
      json.decode(response.body);
      return PostGet.fromJson(
        jsonDecode(response.body),
      );
    } else {
      throw Exception('Failed to delete album.');
    }
  }

  //Update Method of Posts
  Future<PostGet> updatePost(String id) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final response = await http.put(
      Uri.parse('https://social-network3.herokuapp.com/post/$id/'),
      headers: <String, String>{
        'Authorization': 'Bearer  ${prefs.getString('token')}',
        'Content-Type': 'application/json',
      },
      body: jsonEncode(<String, String>{
        'title': postController.postTitleController.text,
        'description':  postController.postDescriptionController.text,
      }),
    );

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return PostGet.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to update album.');
    }
  }}
