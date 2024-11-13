import 'package:adam_waleed_0522018/Services/loginservice.dart';
import 'package:flutter/cupertino.dart';

class LoginProvider extends ChangeNotifier{
   Future<bool>login(String email,String password)async{
    try{
      await LoginService.loginData(email, password);
      notifyListeners();
      return true;
    }
    catch(e){
      print(e.toString());
    }
    return false;
  }
}