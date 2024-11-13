import 'package:adam_waleed_0522018/Services/registerservice.dart';
import 'package:flutter/cupertino.dart';

class RegisterProvider extends ChangeNotifier{
  Future<bool>register(String name,String email,String phone,String password)async{
    try{
      await RegisterService.RegisterData(name, email, password, phone);
      notifyListeners();
      return true;
    }
    catch(e){
      print(e.toString());
    }
    return false;
  }
}