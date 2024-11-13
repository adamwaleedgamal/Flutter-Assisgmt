import 'package:adam_waleed_0522018/models/ShopApp/data_model.dart';
import 'package:adam_waleed_0522018/serviecs/ShopApp/data_serviecs.dart';
import 'package:flutter/material.dart';

class Providershop extends ChangeNotifier
{
  Shopapp_model? obj;
  Future<void> fech()async
  {
    obj=await ShopApp_serviecs.get();
    notifyListeners();
  }
}