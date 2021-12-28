// To parse this JSON data, do
//
//     final postGet = postGetFromJson(jsonString);

import 'dart:convert';

List<PostGet> postGetFromJson(String str) => List<PostGet>.from(json.decode(str).map((x) => PostGet.fromJson(x)));

String postGetToJson(List<PostGet> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PostGet {
  PostGet({
    required this.id,
    required this.title,
    required this.description,
    required this.postImage,
    required this.author,
  });

  int id;
  String title;
  String description;
  String postImage;
  int author;

  factory PostGet.fromJson(Map<String, dynamic> json) => PostGet(
    id: json["id"],
    title: json["title"],
    description: json["description"],
    postImage: json["post_image"],
    author: json["author"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "description": description,
    "post_image": postImage,
    "author": author,
  };
}
