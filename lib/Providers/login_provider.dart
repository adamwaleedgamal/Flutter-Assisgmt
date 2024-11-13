
import 'package:flutter/material.dart';

import '../Models/login_model.dart';
import '../Services/login_service.dart';

class LoginProvider extends ChangeNotifier{
  LoginModel? loginModel;
  Future<bool> login(String email,String password)async{
    try
    {
      await LoginService.loginData(email, password);
      notifyListeners();
      return true ;
    }
    catch(e)
    {
      print(e.toString());
    }
    return false;
  }
}




// if(loginModel?.status == true){
// await LoginService.loginData(email, password);
// return true;
// }
// notifyListeners();
// return false;
