import 'package:adam_waleed_0522018/models/user_model.dart';
import 'package:adam_waleed_0522018/serviecs/user_serviecs.dart';
import 'package:flutter/material.dart';
class ProviderLog extends ChangeNotifier
{
//git
  Regestraion? obj;
    Future<void> signup(name,phone,email,password)async
    {
      await Log_services.signup(name, phone, email, password);
      notifyListeners();
    }

    Future<void> login(email,password)async
    {
      obj= await Log_services.login(email, password);
      print("login sucess");
      notifyListeners();
    }
}