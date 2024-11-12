import 'package:adam_waleed_0522018/models/data_model.dart';
import 'package:adam_waleed_0522018/serviecs/data_serviecs.dart';
import 'package:flutter/material.dart';


class myp2 extends ChangeNotifier
{
  int i=0;
  data_model? obj;
  Future<void> fech()async
  {
    obj=await data_serviecs.get();
    notifyListeners();
  }
}