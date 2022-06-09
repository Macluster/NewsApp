// ignore: file_names
// ignore: file_names

// ignore_for_file: file_names

import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:newsapp/Models/NewsModel.dart';

class News {
  List<NewsModel> news = [];
  String apikey = "7893c7bd29f54d62a96e717674bbdac9";
  Future<List<NewsModel>> getNews() async {
    String url =
        "https://newsapi.org/v2/everything?q=apple&from=2021-11-29&sortBy=popularity&apiKey=$apikey";
    print("ASfasf");
    var response = await http.get(Uri.parse(url));
    print("ASfasdsfdsfsfffffff");
    var jsonData = jsonDecode(response.body);
    print("ASfasdsfdsfsf");
    if (jsonData['status'] == "ok") {
      jsonData["articles"].forEach((element) {
        if (element['urlToImage'] != null && element['description'] != null) {
          NewsModel article = NewsModel(
            element['title'],
            "author",
            element['description'],
            element['urlToImage'],
            DateTime.parse(element['publishedAt']).toString(),
            element["content"],
          );

          news.add(article);
          print(element['title']);
        }
      });
    }

    return news;
  }
}
