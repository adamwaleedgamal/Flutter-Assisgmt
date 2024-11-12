import 'package:adam_waleed_0522018/Model/Regestraion/model_shopapp.dart';
import 'package:dio/dio.dart';

class LoginService {
  static Dio dio = Dio();

  static Future<ModelRegistration> addData(String email, String password) async {
    try {
      Response response = await dio.post(
        "https://student.valuxapps.com/api/login",
        data: {
          "email": email,
          "password": password,
        },
      );

      if (response.statusCode! >= 200 && response.statusCode! < 300) {
        return ModelRegistration.fromJson(response.data);
      } else {
        throw Exception("Server Error: ${response.statusCode}");
      }
    } catch (e) {
      throw Exception("Failed to login: $e");
    }
  }
}