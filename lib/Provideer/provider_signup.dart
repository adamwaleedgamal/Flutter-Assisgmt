import 'package:adam_waleed_0522018/Model/Regestraion/model_shopapp.dart';
import '../Service/serivce_signup.dart';
import '../Service/service_signin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class SignUpProvider extends ChangeNotifier
{
  ModelRegistration? registrationModel;

  Future<bool> signup (name, email, password , phone) async
  {
    try
    {
      await ServiceSignup.addData(name, email, password , phone);
      notifyListeners();
      return true;
    }
    catch(e)
    {
      print(e);
    }
    return false;
  }
}

