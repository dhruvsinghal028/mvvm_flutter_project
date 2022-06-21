

import 'dart:convert';

NewsApi newsApiFromJson(String str) => NewsApi.fromJson(json.decode(str));

String newsApiToJson(NewsApi data) => json.encode(data.toJson());

class NewsApi {
  NewsApi({
    required this.category,
    required this.data,
    required this.success,
  });

  String category;
  List<Datum> data;
  bool success;

  factory NewsApi.fromJson(Map<String, dynamic> json) => NewsApi(
        category: json["category"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
        success: json["success"],
      );

  Map<String, dynamic> toJson() => {
        "category": category,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "success": success,
      };
}

class Datum {
  Datum({
    this.author,
    this.content,

    this.id,
    this.imageUrl,
    this.readMoreUrl,
    this.time,
    this.title,
    this.url,
  });

  String? author;
  String? content;

  String? id;
  String? imageUrl;
  String? readMoreUrl;
  String? time;
  String? title;
  String? url;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        author: json["author"],
        content: json["content"],
        id: json["id"],
        imageUrl: json["imageUrl"],
        readMoreUrl: json["readMoreUrl"],
        time: json["time"],
        title: json["title"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "author": author,
        "content": content,
        "id": id,
        "imageUrl": imageUrl,
        "readMoreUrl": readMoreUrl == null ? null : readMoreUrl,
        "time": time,
        "title": title,
        "url": url,
      };
}
