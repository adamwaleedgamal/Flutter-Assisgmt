import 'package:adam_waleed_0522018/Models/registerlogin.dart';
import 'package:dio/dio.dart';

class RegisterService{
  static Dio dio = Dio();
  static RegisterData(String name,String email,String password,String phone)async{
    var response = await dio.post("https://student.valuxapps.com/api/register",data: {
      'email':email,
      'name':name,
      'phone':phone,
      'password':password
    });
    if(response.statusCode! >= 200 && response.statusCode! < 300){
      print(response.data);
      return Registermodel.fromjson(response.data);
    }
    else{
      throw Exception("Error");
    }
  }
}