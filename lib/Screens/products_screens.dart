import 'package:adam_waleed_0522018/Provideer/ShopApp/shopapp.dart';
import 'package:adam_waleed_0522018/Screens/news_details.dart';
import 'package:adam_waleed_0522018/Widget/news_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Product",
          style: TextStyle(color: Colors.cyan, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),

      body: Consumer<NewsProvider>(builder: (context, value, child) {
        var newsModel = value.data;
        if (newsModel == null) {
          value.getNews();
          return Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return ListView.separated(
            itemCount: newsModel.news.length,
            itemBuilder: (context, index) => NewsItem(
              image: newsModel.news[index]["image"],
              name: newsModel.news[index]["name"],
              price: newsModel.news[index]["price"],
              description: newsModel.news[index]["description"],
            ),
            separatorBuilder: (context, index) => const SizedBox(
              height: 10,
            ),
          );
        }
      }),
    );
  }
}


