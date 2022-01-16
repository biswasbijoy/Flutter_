import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:news_api/news.dart';

class HttpHelper {
  Future<NewsModel> getNews() async {
    var client = http.Client();
    var newsData = null;
    try {
      var url = Uri.parse(
          'https://newsapi.org/v2/everything?domains=wsj.com&apiKey=2e4956f9271a4f04b355e05c10475b33');
      var response = await client.get(url);
      debugPrint(response.statusCode.toString());

      if (response.statusCode == 200) {
        var jsonString = response.body;
        var jsonMap = json.decode(jsonString);

        newsData = NewsModel.fromJson(jsonMap);
      }
    } catch (Exception) {
      debugPrint("Error");
      return newsData;
    }
    return newsData;
  }
}
