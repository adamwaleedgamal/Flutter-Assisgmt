import 'package:adam_waleed_0522018/Model/ShopApp/shop_model.dart';
import 'package:dio/dio.dart';


class NewsService {
  static Dio dio = Dio();

  static Future<NewsModel> fetchData() async {
    try {

      Response response = await dio.get("https://student.valuxapps.com/api/home");
      return NewsModel.fromJson(response.data);
    }
    catch (error) {
      throw "Error: $error";
    }
  }
}
