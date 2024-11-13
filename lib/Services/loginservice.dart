import 'package:adam_waleed_0522018/Models/loginmodel.dart';
import 'package:dio/dio.dart';

class LoginService{
  static Dio dio =Dio();
  static loginData(String email,String password)async{
    var response = await dio.post("https://student.valuxapps.com/api/login",data: {
      'email':email,
      'password':password
    });
    if(response.statusCode! >= 200 && response.statusCode! < 300){
      print(response.data);
      return LoginModel
          .fromjson(response.data);
    }
    else{
      throw Exception("Error");
    }
  }
}