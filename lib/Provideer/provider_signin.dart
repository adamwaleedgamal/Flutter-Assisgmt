import 'package:adam_waleed_0522018/Service/service_signin.dart';
import 'package:flutter/material.dart';

class ProviderSignin with ChangeNotifier {
  bool _isLoading = false;

  bool get isLoading => _isLoading;

  Future<bool> signin(String email, String password) async {
    _isLoading = true;
    notifyListeners();

    try {
      await LoginService.addData(email, password);
      _isLoading = false;
      notifyListeners();
      return true;
    } catch (e) {
      _isLoading = false;
      notifyListeners();
      return false;
    }
  }
}