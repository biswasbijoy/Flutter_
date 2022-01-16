import 'package:flutter/material.dart';
import 'package:news_api/http_helper.dart';

import 'news.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<NewsModel>? news;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    news = HttpHelper().getNews();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: FutureBuilder<NewsModel>(
          future: news,
          builder: (context, snapshot) {
            return ListView.builder(
                itemCount: snapshot.data!.articles.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          snapshot.data!.articles[index].urlToImage.toString()),
                    ),
                    title:
                        Text(snapshot.data!.articles[index].title.toString()),
                  );
                });
          },
        ));
  }
}
