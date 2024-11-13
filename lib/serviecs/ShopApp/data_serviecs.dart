import 'package:adam_waleed_0522018/models/ShopApp/data_model.dart';
import 'package:dio/dio.dart';

class ShopApp_serviecs
{
   static Dio dio=Dio();
   static Future<Shopapp_model> get()async
   {
     var res=await dio.get("https://student.valuxapps.com/api/home");
      return Shopapp_model.fromjson(res.data);
   }
}