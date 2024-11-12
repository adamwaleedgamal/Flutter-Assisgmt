import 'package:adam_waleed_0522018/Model/ShopApp/shop_model.dart';
import 'package:adam_waleed_0522018/Service/ShopApp/service_shop.dart';
import 'package:flutter/cupertino.dart';



class NewsProvider extends ChangeNotifier {
  NewsModel? data;

  Future<void> getNews() async {
    data = await NewsService.fetchData();
    notifyListeners();
  }
}
